accessing
stringQueryFor: aString 
	| retVal |
	retVal := QCQuery on: self.
	retVal select: ((QCStringQuery on: retVal)
		searchString: aString;
		yourself).
	^retVal