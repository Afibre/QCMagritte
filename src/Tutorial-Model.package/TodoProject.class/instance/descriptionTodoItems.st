acessing-magritte
descriptionTodoItems
	<magritteDescription>
	^MAToManyRelationDescription new
		label: 'Todo''s';
		accessor: #todos;
		priority: 250;
		classes: { TodoItem };
		beDefinitive;
		yourself