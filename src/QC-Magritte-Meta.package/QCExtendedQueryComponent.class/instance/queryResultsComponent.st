accessing
queryResultsComponent
	^queryResultsComponent ifNil: [ queryResultsComponent := self buildQueryResultsComponent ]