initialization
buildQueryResultsComponent
	| retVal |
	retVal := (self query perform asComponent)
		setParent: self;
		hideOptionsPane;
		yourself.
	self originalQueryResultsDescription rowCount ifNotNil: [ :batchSize |
		(retVal children detect: [ :each | each hasOptionsPane ] ifNone: [ nil ]) ifNotNil: [ :comp |
			comp report batchSize: batchSize ] ].
	^retVal