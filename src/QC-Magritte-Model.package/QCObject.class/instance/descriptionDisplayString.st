magritte-description
descriptionDisplayString
	" This is very usefull for being able to link back ... unfortunately, this sometimes leads to loops in rendering a label. Use visibleInLabel in combination with QCLabelWriter as stringWriter to avoid loops"
	<magritteDescription>
	^MAMemoDescription new
		label: 'Description';
		accessor: #displayName;
		beReadonly;
		visible: (self class == QCObject);
		reportColumnClass: QCDescribedColumn;
		priority: 50;
		yourself