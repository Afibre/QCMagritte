magritte-description
descriptionNestedObject
	<magritteDescription>
	^MAToOneRelationDescription new
		accessor: #nestedObject;
		label: 'Nested Object';
		classes: (Array with: QCTest2LevelNestedObject);
		priority: 200;
		yourself