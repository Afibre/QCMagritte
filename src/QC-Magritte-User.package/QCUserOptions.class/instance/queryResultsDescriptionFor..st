accessing
queryResultsDescriptionFor: aQuery
	^self resultsDescriptions at: aQuery ifAbsentPut: [ 
		aQuery resultsDescription asResultsDescription copy ]