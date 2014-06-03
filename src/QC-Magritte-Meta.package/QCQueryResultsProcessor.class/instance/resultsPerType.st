accessing
resultsPerType
	^resultsPerType ifNil: [ resultsPerType := self buildResultsPerType ]