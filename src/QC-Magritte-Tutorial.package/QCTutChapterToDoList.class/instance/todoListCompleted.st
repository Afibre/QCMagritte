todo-list
todoListCompleted
	<tutorial>
	^QCTutorial new
		priority: 80;
		title: 'Completed';
		chapter: 'Todo List';
		description: 'From the perspective of the user, the column completed is a bit odd. We can add items that are already completed, and simply check this box. We should do something about this.';
		addExplanation: 'First of all we are going to disallow the user to change this value by hand. We are going to make this column readonly. We do this by adding the message: "beReadonly" in the cascade of the description readonly. This method should look like this after editing:';
		addCode: 'descriptionCompleted
	<magritteDescription>
	^MABooleanDescription new
		accessor: #completed;
		label: ''Completed'';
		priority: 300;
		beReadonly;
		yourself';
		addExplanation: 'But we still want to be able to complete a todo item. We do this by adding actions to the todo item. We add the following method:';
		addCode: 'containerActions: aContainer
	<magritteContainer>
	^aContainer
		addCommand: ''Complete'' action: #complete;
		addCommand: ''Reopen'' action: #reopen;
		yourself';
		addExplanation: 'Here we see a new pragma: "magritteContainer". Because the method has a parameter it indicates it should be called with the container that is created. It is called before we add our descriptions. Here we add our commands.';
		addExplanation: 'There is a second special thing here we want to note: #complete is a symbol. This is a constant in Smalltalk. In Smalltalk we can use these symbols to call methods on objects.';
		addExplanation: 'The command here means that the method complete will be called when the user presses on the action "complete", that is both visible in the overview and the details. This means we need to implement these methods as well:';
		addCode: 'complete
	completed := true';
		addCode: 'reopen
	completed := false';
		addExplanation: 'Go back to the website and test how this looks. There is a good chance that reloading won''t change a thing, because the component is already initialized with the magritte-description. We will go into the technical about this later, for now: if the webpage has not changed, press the "new session" button on the bottom left.';
		yourself