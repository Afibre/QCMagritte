magritte-description
descriptionOpenItems
	<magritteDescription>
	^MAToManyRelationDescription new
		label: 'Todo';
		accessor: #openItems;
		priority: 100;
		classes: { TodoItem };
		yourself