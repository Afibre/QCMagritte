magritte-description
descriptionOperation
	<magritteDescription>
	^QCToOneOptionRelationDescription new
		label: 'Operation';
		accessor: #operation;
		priority: 300;
		classes: QCOperator withAllSubclasses;
		options: self possibleOperations;
		group: (QCMultilanguageString on: 'Operation');
		yourself