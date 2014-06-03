visiting
visitDescription: anObject
	buildedDescription
		ifNil: [ self setBuildedDescription: anObject]
		ifNotNil: [ buildedDescription add: anObject ]