magritte-description
descriptionSimple
	<magritteDescription>
	^MAToOneRelationDescription new
		accessor: #simple;
		classes: (Array with: QCFormExampleSimpleObject);
		label: 'Simple object';
		comment: 'This object is always there.';
		beRequired;
		yourself