magritte-description
descriptionSelectQuery
	<magritteDescription>
	^MAToOneRelationDescription new
		accessor: #select;
		label: 'Query';
		visibleInLabel: false;
		visibleInReport: false;
		visible: false;
		priority: 300;
		classes: QCSelectQuery subclasses;
		yourself