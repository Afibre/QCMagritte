magritte-description
descriptionSimple
	<magritteDescription>
	^MAToOneRelationDescription new
		label: 'simple';
		accessor: #simple;
		comment: 'A simple object';
		classes: (Array with: QCFormExampleSimpleObject);
		beRequired;
		yourself