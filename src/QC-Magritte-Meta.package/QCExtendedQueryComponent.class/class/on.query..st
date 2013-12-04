instance creation
on: aComponent query: aQuery 
	^self basicNew
		initialize: aComponent query: aQuery;
		yourself