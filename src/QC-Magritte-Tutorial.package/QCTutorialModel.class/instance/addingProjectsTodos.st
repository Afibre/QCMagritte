addingProjects
addingProjectsTodos
	<tutorial>
	^QCTutorial new
		priority: 50;
		title: 'Todos';
		chapter: 'Adding projects';
		description: 'Now we want to see the open todo items also in the projects.';
		addExplanation: 'So we are going to add the same construction in a project. Here we are going to add the todo items as a magritte description.';
		addCode: 'descriptionTodoItems
	<magritteDescription>
	^MAToManyRelationDescription new
		label: ''Todo''''s'';
		accessor: #todos;
		priority: 250;
		classes: { TodoItem };
		beDefinitive;
		yourself';
		addExplanation: 'Note that we have a double quote in the todo''s. This is because the quote is normally an end of a string, and this is the escape sequence to add a quote. For now we added the property "beDefinitve", to disallow adds and removals from this list.';
		addExplanation: 'We also have to implement the todo''s, so here we need to be able to access the model. The model needs the project to determine the todos for this project. ';
		addCode: 'todos
	^self model todosFor: self';
		addExplanation: 'And in the model we perform a simple select. ';
		addCode: 'todosFor: aProject
	^self todoItems select: [ :each | each project = aProject ]';
		addExplanation: 'Now go back to the site and look if it worked. ';
		yourself