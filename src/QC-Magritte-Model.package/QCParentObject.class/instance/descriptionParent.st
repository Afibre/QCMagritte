magritte-description
descriptionParent
	" This is very usefull for being able to link back ... unfortunately, this sometimes leads to loops in rendering a label. Use visibleInLabel in combination with QCLabelWriter as stringWriter to avoid loops"
	<magritteDescription>
	^MAToOneRelationDescription new
		label: 'Belongs to';
		accessor: #parent;
		beReadonly;
		classes: self parentClasses;
		isJsonSerialized: false;
		visibleInLabel: false;
		visibleInReport: false;
		reportColumnClass: QCDescribedColumn;
		stringWriter: QCLabelReflectiveWriter;
		visible: (self class == QCParentObject);
		yourself