magrittes-descriptions
descriptionHasColumnChooser
	<magritteDescription>
	^ MABooleanDescription new 
		label: 'Column chooser';
		accessor: #hasColumnChooser;
		comment: 'Allows selecting the columns';
		group: 'QC Magritte options' ;
		default: false;
		priority: 300;
		yourself