magritte-description
descriptionCrud
	<magritteDescription>
	^MAMultipleOptionDescription new
		label: 'crud';
		accessor: #crud;
		options: self crudOptions;
		validator: [ :value | self checkCrud: value ];
		priority: 50;
		visibleInLabel: false;
		yourself