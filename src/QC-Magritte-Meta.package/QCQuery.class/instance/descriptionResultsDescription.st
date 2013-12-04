magritte-description
descriptionResultsDescription
	<magritteDescription>
	^MAToOneRelationDescription new
		accessor: #resultsDescription;
		label: 'Results';
		visibleInLabel: false;
		visibleInReport: false;
		visible: false;
		reportColumnClass: QCRelationColumn;
		priority: 400;
		classes: { QCQueryResultsDescription };
		yourself