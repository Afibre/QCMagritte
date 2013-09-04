instance creation
searchOn: aDescription
	^self new
		description: aDescription;
		property: #inSearch;
		saveProperty: #inSearch;
		isOrdered: false;
		yourself