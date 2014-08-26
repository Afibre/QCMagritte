magritte-description
descriptionExpandableNestedObject
	<magritteDescription>
	^MAToOneRelationDescription new
		accessor: #expandableNestedObject;
		label: 'Expandable Nested Object';
		classes: (Array with: QCTestNestedObject);
		canExpand: true;
		priority: 200;
		yourself