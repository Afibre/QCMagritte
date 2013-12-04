magritte-description
descriptionItems
	<magritteDescription>
	^MAToManyRelationDescription new
		label: 'items';
		accessor: #items;
		componentClass: QCExtendedToManyComponent;
		classes: (Array with: QCTestObject);
		yourself