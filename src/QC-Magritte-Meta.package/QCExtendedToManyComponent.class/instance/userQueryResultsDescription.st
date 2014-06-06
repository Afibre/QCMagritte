accessing
userQueryResultsDescription
	^userQueryResultsDescription ifNil: [ userQueryResultsDescription := self buildQueryResultsDescription ]