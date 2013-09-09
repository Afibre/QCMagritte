magritte-description
descriptionComposed
	<magritteDescription>
	^MAToOneRelationDescription new
		label: 'composed ';
		accessor: #composed;
		comment: 'A composed object';
		classes: (Array with: QCFormExampleComposedObject);
		beRequired;
		yourself