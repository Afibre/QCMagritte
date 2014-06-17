todo-list
todoListItemsDescription
	<tutorial>
	^QCTutorial new
		priority: 60;
		title: 'Items Description';
		chapter: 'Todo List';
		description: 'Also, for our model we need to create a description for the todo list items. In our description we will link it to our class we created at the beginning of this chapter.';
		addCode: 'descriptionTodoItems
	<magritteDescription>
	^MAToManyRelationDescription new
		label: ''Todo'';
		accessor: #todoItems;
		priority: 200;
		classes: { TodoItem };
		yourself';
		addExplanation: 'The type of the todo list is a "to many relation" to the classes "TodoItem". Note that the "{" "}" create an array of the things that are listed in between.';
		yourself