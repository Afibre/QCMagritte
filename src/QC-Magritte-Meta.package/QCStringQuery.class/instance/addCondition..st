accessing
addCondition: aString 
	self searchString
		ifEmpty: [ ^self searchString: aString ].
	^(QCAndOrQuery onQuery: self)
		addCondition: aString
	