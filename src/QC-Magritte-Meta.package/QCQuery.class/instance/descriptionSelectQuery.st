magritte-description
descriptionSelectQuery
	<magritteDescription>
	^MAToOneRelationDescription new
		accessor: #select;
		label: 'Query';
		visibleInLabel: false;
		visibleInReport: false;
		visible: false;
		reportColumnClass: QCRelationColumn;
		priority: 300;
		classes: QCSelectQuery subclasses;
		yourself