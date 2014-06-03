instance creation
visibleOn: aDescription
	^self new
		description: aDescription;
		property: #visible;
		saveProperty: #visibleInReport;
		isOrdered: true;
		yourself