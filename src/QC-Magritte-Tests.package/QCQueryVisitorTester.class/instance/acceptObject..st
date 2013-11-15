mock
acceptObject: anObject
	anObject canQuery ifTrue: [ self acceptedObjects add: anObject ]