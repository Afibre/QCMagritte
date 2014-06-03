magritte-description
descriptionLanguage
	<magritteDescription>
	^MASingleOptionDescription new
		accessor: #language;
		label: 'Language';
		priority: 400;
		options: self allLanguages;
		labels: QCLabelReflectiveWriter;
		comment: 'The language that is used';
		reportColumnClass: QCDescribedColumn;
		yourself