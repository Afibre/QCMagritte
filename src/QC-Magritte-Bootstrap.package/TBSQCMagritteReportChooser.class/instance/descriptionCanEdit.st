magrittes-descriptions
descriptionCanEdit
	<magritteDescription>
	^ MABooleanDescription new 
		label: 'Can edit';
		accessor: #canEdit;
		group: 'QC Magritte options' ;
		comment: 'Allows editing (inline and in details)';
		default: false;
		priority: 200;
		yourself