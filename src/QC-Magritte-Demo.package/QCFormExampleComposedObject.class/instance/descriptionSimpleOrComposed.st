magritte-description
descriptionSimpleOrComposed
	<magritteDescription>
	^MAToOneRelationDescription new
		accessor: #simpleOrComposed;
		classes: (Array with: QCFormExampleSimpleObject with: QCFormExampleComposedObject);
		label: 'Simple object or composed';
		comment: 'This object might be a composed object as well.';
		beRequired;
		yourself