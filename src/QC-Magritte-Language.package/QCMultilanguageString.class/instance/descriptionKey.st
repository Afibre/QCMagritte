magritte-description
descriptionKey
	<magritteDescription>
	^MAStringDescription new
		accessor: #key;
		label: (QCMultilanguageString on: 'Key');
		priority: 50;
		beReadonly;
		comment: (QCMultilanguageString on: 'The key in the code');
		reportColumnClass: QCDescribedColumn;
		yourself