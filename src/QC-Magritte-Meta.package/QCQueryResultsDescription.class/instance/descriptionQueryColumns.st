magritte-description
descriptionQueryColumns
	<magritteDescription>
	^MAToManyRelationDescription new
		priority: 500;
		label: 'Calculated columns';
		accessor: #queryColumns;
		classes: { QCQueryColumn };
		componentClass: self class defaultComponentClass;
		reportColumnClass: QCToManyColumn;
		stringWriter: QCLabelReflectiveWriter;
		visibleInReport: true;
		visibleInLabel: false;
		yourself