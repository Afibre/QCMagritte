magritte-description
subQueryDescription
	<magritteDescription>
	^ MAToManyRelationDescription new
		priority: 200;
		label: 'Sub queries';
		accessor: #subQueries;
		classes: QCSelectQuery allSubclasses;
		componentClass: QCExtendedQueryComponent;
		ordered: true;
		visibleInReport: false;
		visibleInLabel: false;
		yourself