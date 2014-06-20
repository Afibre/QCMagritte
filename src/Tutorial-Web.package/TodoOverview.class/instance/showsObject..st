accessing
showsObject: anObject
	^(super showsObject: anObject) or: [ self isShown: anObject ]