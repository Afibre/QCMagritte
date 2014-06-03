magritte-description
descriptionSearchString
	<magritteDescription>
	^MAStringDescription new
		accessor: #searchString;
		comment: (QCMultilanguageString on: 'The string that is searched for.');
		label: (QCMultilanguageString on: 'Search');
		priority: 50;
		reportColumnClass: QCDescribedColumn;
		visibleInReport: false;
		yourself