accessing
findPageFor: anObject
	^self detectPage: [ :each | each showsObject: anObject ] ifNone: [ nil ]