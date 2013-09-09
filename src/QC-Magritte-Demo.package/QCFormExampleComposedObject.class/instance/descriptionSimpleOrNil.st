magritte-description
descriptionSimpleOrNil
	<magritteDescription>
	^MAToOneRelationDescription new
		accessor: #simpleOrNil;
		classes: (Array with: QCFormExampleSimpleObject);
		label: 'Simple object or nil';
		comment: 'This object might be nil.';
		yourself