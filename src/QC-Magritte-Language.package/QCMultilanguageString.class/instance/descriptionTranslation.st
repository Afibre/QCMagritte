magritte-description
descriptionTranslation
	<magritteDescription>
	^MAStringDescription new
		accessor: #stringValue;
		label: 'String value';
		priority: 100;
		beReadonly;
		comment: 'The string that is currently shown';
		reportColumnClass: QCDescribedColumn;
		yourself