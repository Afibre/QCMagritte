magritte-description
subQueryDescription
	<magritteDescription>
	^MAToManyRelationDescription new
		priority: 200;
		label: (QCMultilanguageString on: 'Sub queries');
		accessor: #subQueries;
		classes: QCSelectQuery allSubclasses;
		componentClass: QCExtendedQueryComponent;
		reportColumnClass: QCToManyColumn;
		visibleInReport: false;
		visibleInLabel: false;
		yourself