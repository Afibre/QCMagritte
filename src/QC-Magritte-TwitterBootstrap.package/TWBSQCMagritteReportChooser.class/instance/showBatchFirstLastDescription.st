magrittes-descriptions
showBatchFirstLastDescription
	<magritteDescription>
	^ MABooleanDescription new 
		label: 'Show first/last';
		accessor: #showBatchFirstLast;
		default: false;
		yourself