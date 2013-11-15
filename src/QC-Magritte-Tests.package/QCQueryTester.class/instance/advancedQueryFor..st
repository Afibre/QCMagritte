accessing
advancedQueryFor: aString
	| retVal |
	retVal := QCQuery on: self.
	retVal select: ((QCAdvancedQuery on: retVal)
		searchValue: aString;
		yourself).
	^retVal