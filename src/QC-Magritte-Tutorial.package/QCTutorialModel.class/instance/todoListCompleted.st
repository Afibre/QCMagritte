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
		addCommand: ''Complete'' condition: nil action: [ :row | row complete ];
		addCommand: ''Reopen'' condition: nil action: [ :row | row reopen ];
		yourself';
		addExplanation: 'Here we see a new pragma: "magritteContainer". Because the method has a parameter it indicates it should be called with the container that is created. It is called before we add our descriptions. Here we add our commands. Since we only want to complete it when the row is not completed, we add the condition "[ :row | row complete ]". This is a special construction in smalltalk indication a piece of code that get''s evaluated when appropriate. It has one paramter (the row). When the user presses the "complete" action, it will be called.';
		addExplanation: 'This means we need some extra methods as well:';
		addCode: 'complete
		completed := true';
		addCode: 'reopen
		completed := false';
		addExplanation: 'Go back to the website and test how this looks.';
		yourself