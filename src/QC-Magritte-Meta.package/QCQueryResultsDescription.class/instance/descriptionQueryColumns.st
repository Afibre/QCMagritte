magritte-description
descriptionQueryColumns
	<magritteDescription>
	^MAToManyRelationDescription new
		priority: 500;
		label: 'Calculated columns';
		accessor: #queryColumns;
		classes: { QCQueryColumn };
		componentClass: QCWebToManyComponent;
		reportColumnClass: QCToManyColumn;
		stringWriter: QCLabelWriter;
		visibleInReport: true;
		visibleInLabel: false;
		yourself