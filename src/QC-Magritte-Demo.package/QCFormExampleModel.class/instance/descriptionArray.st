magritte-description
descriptionArray
	<magritteDescription>
	^MAToOneRelationDescription new
		label: 'array';
		accessor: #data ;
		comment: 'A list of objects';
		classes: QCFormExampleObject allSubclasses;
		beRequired;
		priority: 300;
		yourself