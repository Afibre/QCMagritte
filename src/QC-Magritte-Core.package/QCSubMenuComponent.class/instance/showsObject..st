testing
showsObject: anObject 
	(self rootPage notNil and: [ self rootPage showsObject: anObject ]) ifTrue: [ ^true ].
	^self subMenuPage showsObject: anObject