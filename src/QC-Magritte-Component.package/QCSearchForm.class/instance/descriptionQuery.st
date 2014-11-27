magritte-description
descriptionQuery
	<magritteDescription>
	^MAToOneRelationDescription new
		accessor: #selectQuery;
		label: 'Search on';
		classes: QCSelectQuery allSubclasses;
		beRequired;
		priority: 200;
		yourself