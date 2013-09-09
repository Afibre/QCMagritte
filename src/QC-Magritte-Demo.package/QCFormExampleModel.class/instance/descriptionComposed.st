magritte-description
descriptionComposed
	<magriteDescription>
	^MAToManyRelationDescription new
		label: 'composed ';
		accessor: #composed;
		comment: 'A composed object';
		classes: (Array with: QCFormExampleComposedObject);
		beRequired;
		yourself