magrittes-descriptions
descriptionBordered
	<magritteDescription>
	^ MABooleanDescription new 
		label: 'Bordered';
		group: 'Bootstrap options' ;
		accessor: #bordered;
		comment: 'Rounds corners and adds outer border';
		default: false;
		priority: 150;
		yourself