magritte-description
descriptionShownColumns
	<magritteDescription>
	^MAMultipleOptionDescription new
		priority: 700;
		label: 'Shown columns';
		accessor: #shownColumns;
		options: self possibleColumns;
		hidden: (self canChooseColumnsFor: self resultType);
		componentClass: QCColumnSelectionComponent;
		ordered: true;
		yourself