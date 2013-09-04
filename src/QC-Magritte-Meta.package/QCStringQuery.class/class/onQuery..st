instance creation
onQuery: aQuery
	^(self on: aQuery parent)
		searchString: aQuery searchValue;
		yourself