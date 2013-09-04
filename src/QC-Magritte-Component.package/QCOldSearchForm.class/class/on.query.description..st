instance creation
on: aParent query: aSelectQuery description: aDescription 
	^self new
		parent: aParent;
		selectQuery: aSelectQuery;
		targetDescription: aDescription;
		yourself