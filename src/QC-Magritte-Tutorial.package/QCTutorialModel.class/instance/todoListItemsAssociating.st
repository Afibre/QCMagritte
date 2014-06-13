todo-list
todoListItemsAssociating
	<tutorial>
	^QCTutorial new
		priority: 60;
		title: 'Link to application';
		chapter: 'Todo List';
		description: 'Finally we need to link the application. <todo....>';
		addCode: 'descriptionTodoListItems
		<magritteDescription>
		^MAToManyRelationDescription new
			label: ''Todo'';
			accessor: #todoListItems;
			priority: 200;
			classes: { TodoListItem };
			yourself';
		explanation: 'The type of the todo list is a "to many relation" to the classes "TodoListItem". Note that the "{" "}" create an array of the things that are listed in between.';
		yourself