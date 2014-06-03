accessing
menuChoice: anIndex
	anIndex = 1 ifTrue: [ 
		self rootPage ifNil: [ ^self ].
		^self rootPage ].
	^self subMenuPage menuChoice: (anIndex -1) displayChildren: self isRootSelected not