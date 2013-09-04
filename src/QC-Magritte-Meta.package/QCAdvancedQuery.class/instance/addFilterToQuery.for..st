accessing
addFilterToQuery: aString for: aDescription
	self searchValue ifEmpty: [
		searchValue := aString.
		searchField := aDescription label ].
	^(QCAndOrQuery onQuery: self)
		addFilterToQuery: aString for: aDescription