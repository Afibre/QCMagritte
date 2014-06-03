accessing
resultsDescription
	^ resultsDescription ifNil: [ resultsDescription := QCQueryResultsDescription on: self ]