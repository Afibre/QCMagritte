magritte-description
queryTypeDescription
	<magritteDescription>
	^MABooleanDescription new
		label: (QCMultilanguageString on: 'Query type');
		falseString: (QCMultilanguageString on: 'One query should satisfy');
		trueString: (QCMultilanguageString on: 'All queries should satisfy');
		accessor: #isAndQuery;
		componentClass: MASelectListComponent;
		reportColumnClass: QCDescribedColumn;
		visibleInLabel: false;
		priority: 100;
		yourself