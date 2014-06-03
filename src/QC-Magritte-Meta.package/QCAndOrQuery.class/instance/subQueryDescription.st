magritte-description
subQueryDescription
	<magritteDescription>
	^ MAToManyRelationDescription new
		priority: 200;
		label: (QCMultilanguageString on: 'Sub queries');
		accessor: #subQueries;
		classes: QCSelectQuery allSubclasses;
		componentClass: QCExtendedQueryComponent;
		ordered: true;
		visibleInReport: false;
		visibleInLabel: false;
		yourself