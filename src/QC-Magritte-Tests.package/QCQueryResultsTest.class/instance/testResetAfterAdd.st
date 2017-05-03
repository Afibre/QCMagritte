tests
testResetAfterAdd
	| queryResults |
	queryResults := QCQueryResultsProcessor on: self.
	self assert: queryResults isEmpty.
	queryResults addToResult: (QCModelPart on: self).
	self assert: 1 equals: queryResults size.
	queryResults reset.
	self assert: queryResults isEmpty