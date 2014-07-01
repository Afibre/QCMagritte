magritte-description
descriptionShownColumns
	<magritteDescription>
	^MAMultipleOptionDescription new
		priority: 700;
		label: 'Shown columns';
		accessor: #shownColumns;
		options: (self possibleColumnsFor: self resultType);
		hidden: (self canChooseColumnsFor: self resultType);
		componentClass: QCColumnSelectionComponent;
		ordered: true;
		yourself