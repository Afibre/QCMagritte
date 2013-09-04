accessing
addToResult: anObject
	(self canBeResult: anObject)
		ifTrue: [ self results add: anObject ]