magritte-description
descriptionTranslation
	<magritteDescription>
	^MAStringDescription new
		accessor: #stringValue;
		label: (QCMultilanguageString on: 'String value');
		priority: 100;
		beReadonly;
		comment: (QCMultilanguageString on: 'The string that is currently shown');
		reportColumnClass: QCDescribedColumn;
		yourself