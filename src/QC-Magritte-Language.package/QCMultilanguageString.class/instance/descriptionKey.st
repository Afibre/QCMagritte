magritte-description
descriptionKey
	<magritteDescription>
	^QCMultilanguageKeyDescription new
		accessor: #key;
		label: 'Key';
		priority: 50;
		beReadonly;
		comment: 'The key in the code';
		reportColumnClass: QCDescribedColumn;
		yourself