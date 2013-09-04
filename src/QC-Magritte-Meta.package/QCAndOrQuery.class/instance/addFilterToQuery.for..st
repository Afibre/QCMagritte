accessing
addFilterToQuery: aString for: aDescription 
	self subQueries add: (QCAdvancedQuery on: self searchValue: aString description: aDescription)