accessing
menuChoice: anIndex displayChildren: aDisplayChildren
	| index |
	aDisplayChildren ifFalse: [ | retVal |
		retVal := (self pages at: anIndex).
		((retVal respondsTo: #rootPage) and: [ retVal rootPage notNil ]) ifTrue: [ ^retVal rootPage ].
		^retVal ].
	index := 0.
	self pages do: [ :page |
		| size |
		size := self menuSizeFor: page.
		index + size >= anIndex ifTrue: [ 
			(page respondsTo: #menuSize)
				ifTrue: [ ^page menuChoice: (anIndex - index) ]
				ifFalse: [ ^page ] ].
		index := index + size ].
	NotFound signalFor: anIndex in: self