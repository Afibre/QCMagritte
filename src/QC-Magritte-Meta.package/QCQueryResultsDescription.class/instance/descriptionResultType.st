magritte-description
descriptionResultType
	<magritteDescription>
	^MASingleOptionDescription new
		priority: 600;
		label: 'Result type';
		accessor: #resultType;
		options: self possibleResultClasses;
		reportColumnClass: QCDescribedColumn;
		yourself