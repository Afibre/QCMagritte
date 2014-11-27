magritte-description
descriptionSearchValueType
	<magritteDescription>
	^MASingleOptionDescription new
		label: 'Search value type';
		options: self possibleValueTypes;
		labels: QCLabelReflectiveWriter;
		accessor: #searchValueType;
		beRequired;
		reportColumnClass: QCDescribedColumn;
		priority: 250;
		visibleInReport: false;
		yourself