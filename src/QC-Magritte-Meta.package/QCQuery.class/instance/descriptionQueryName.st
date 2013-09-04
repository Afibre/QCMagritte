magritte-description
descriptionQueryName
	<magritteDescription>
	^MAStringDescription new
		accessor: #queryName;
		comment: (QCMultilanguageString on: 'When you save your query, it is saved under this name.');
		label: (QCMultilanguageString on: 'Query name');
		priority: 100;
		reportColumnClass: QCDescribedColumn;
		visibleInReport: true;
		beRequired;
		yourself