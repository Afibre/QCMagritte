accessing
addFilterToQuery: aString for: aDescription
	self searchString ifEmpty: [
		^(QCAdvancedQuery onQuery: self)
			addFilterToQuery: aString for: aDescription ].
	^(QCAndOrQuery onQuery: self)
		addFilterToQuery: aString for: aDescription 