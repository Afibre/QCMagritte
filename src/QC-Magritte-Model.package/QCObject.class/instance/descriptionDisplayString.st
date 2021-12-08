magritte-description
descriptionDisplayString

	<magritteDescription>
	^ MAMemoDescription new
		  label: 'Name';
		  accessor: #displayName;
		  beReadOnly;
		  visible: self class == QCObject;
		  priority: 50;
		  visibleInLabel: self displayStringVisibleInLabel;
		  visibleInReport: self displayStringVisibleInReport;
		  yourself