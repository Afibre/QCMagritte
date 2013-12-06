magritte-description
descriptionItems
	<magritteDescription>
	^MAToManyRelationDescription new
		label: 'items';
		accessor: #items;
		componentClass: QCToManyComponent;
		classes: (Array with: QCTestObject);
		yourself