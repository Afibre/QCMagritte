accessing
addFilterToQuery: aString for: aDescription 
	self select: (self select addFilterToQuery: aString for: aDescription)