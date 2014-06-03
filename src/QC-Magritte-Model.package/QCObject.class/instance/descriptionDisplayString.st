magritte-description
descriptionDisplayString
	<magritteDescription>
	^MAMemoDescription new
		label: 'Name';
		accessor: #displayName;
		beReadonly;
		visible: (self class == QCObject);
		reportColumnClass: QCDescribedColumn;
		priority: 50;
		visibleInLabel: self displayStringVisibleInLabel;
		yourself