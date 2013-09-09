magritte-description
descriptionSimple
	<magriteDescription>
	^MAToManyRelationDescription new
		label: 'simple';
		accessor: #simple;
		comment: 'A simple object';
		classes: (Array with: QCFormExampleSimpleObject);
		beRequired;
		yourself