magritte-description
descriptionQueryDescription
	<magritteDescription>
	^MAStringDescription new
		accessor: #queryDescription;
		comment: (QCMultilanguageString on: 'A string representation of this query.');
		label: (QCMultilanguageString on: 'Query description');
		priority: 75;
		reportColumnClass: QCDescribedColumn;
		visibleInReport: true;
		visibleInLabel: true;
		visible: (self class == QCSelectQuery);
		beReadonly;
		yourself