accessing
resultsDescription
	^resultsDescription ifNil: [ resultsDescription := self buildQueryResultsDescription ]