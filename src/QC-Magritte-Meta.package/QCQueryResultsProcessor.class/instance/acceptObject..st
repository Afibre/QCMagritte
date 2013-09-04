running
acceptObject: anObject
	(self canProces: anObject) ifTrue: [
		self procesObject: anObject.
		(self matchesObject: anObject)
			ifTrue: [ self addToResult: anObject ] ]
