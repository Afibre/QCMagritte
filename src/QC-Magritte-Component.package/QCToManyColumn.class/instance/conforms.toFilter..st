private
conforms: anObject toFilter: aString
	(super conforms: anObject toFilter: aString) ifTrue: [ ^true ].
	anObject isString ifTrue: [ ^self childDescription find: aString in: anObject ].
	anObject isCollection ifTrue: [ 
		anObject do: [ :each | (self childDescription find: aString in: each) ifTrue: [ ^true ] ].
		^false ].
	^self childDescription find: aString in: anObject