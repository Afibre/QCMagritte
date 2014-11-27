magritte-description
descriptionQueryDescription
	<magritteDescription>
	^MAStringDescription new
		accessor: #queryDescription;
		comment: 'A string representation of this query.';
		label: 'Query description';
		priority: 75;
		reportColumnClass: QCDescribedColumn;
		visibleInReport: true;
		visibleInLabel: true;
		visible: (self class == QCSelectQuery);
		beReadonly;
		yourself