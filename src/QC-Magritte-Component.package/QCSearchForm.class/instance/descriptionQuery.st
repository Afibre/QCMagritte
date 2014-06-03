magritte-description
descriptionQuery
	<magritteDescription>
	^MAToOneRelationDescription new
		accessor: #selectQuery;
		label: (QCMultilanguageString on: 'Search on');
		classes: QCSelectQuery allSubclasses;
		beRequired;
		priority: 200;
		yourself