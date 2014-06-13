initialization
createPageFor: anObject
	^anObject isQuery
		ifTrue: [ self overviewClass on: self query: anObject ]
		ifFalse: [ (self detailsClass on: self target: anObject)
			canClose: true;
			yourself ]