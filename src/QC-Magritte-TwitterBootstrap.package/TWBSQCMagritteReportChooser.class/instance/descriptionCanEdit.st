magrittes-descriptions
descriptionCanEdit
	<magritteDescription>
	^ MABooleanDescription new 
		label: 'Can edit';
		accessor: #canEdit;
		comment: 'Allows editing (inline and in details)';
		default: false;
		yourself