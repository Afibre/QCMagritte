magritte-description
descriptionQueryName
	<magritteDescription>
	^MAStringDescription new
		accessor: #queryName;
		comment: 'When you save your query, it is saved under this name.';
		label: 'Query name';
		priority: 100;
		reportColumnClass: QCDescribedColumn;
		visibleInReport: true;
		beRequired;
		yourself