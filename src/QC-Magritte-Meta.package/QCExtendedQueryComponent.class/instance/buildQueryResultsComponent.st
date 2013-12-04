initialization
buildQueryResultsComponent
	| retVal |
	retVal := (self query perform asComponent)
		setParent: self;
		hideOptionsPane;
		yourself.
	self originalQueryResultsDescription rowCount ifNotNilDo: [ :batchSize |
		(retVal children detect: [ :each | each hasOptionsPane ] ifNone: [ nil ]) ifNotNilDo: [ :comp |
			comp report batchSize: batchSize ] ].
	^retVal