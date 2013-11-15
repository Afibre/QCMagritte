magritte-description
descriptionOperation
	<magritteDescription>
	^QCOptionRelationDescription new
		label: (QCMultilanguageString on: 'Operation');
		accessor: #operation;
		priority: 300;
		classes: QCOperator withAllSubclasses;
		options: self possibleOperations;
		group: (QCMultilanguageString on: 'Operation');
		yourself