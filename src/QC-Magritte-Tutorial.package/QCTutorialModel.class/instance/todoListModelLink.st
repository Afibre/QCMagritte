todo-list
todoListModelLink
	<tutorial>
	^QCTutorial new
		priority: 65;
		title: 'Link to application';
		chapter: 'Todo List';
		description: 'Finally we need to link our model to the application. As this is simply a demo, we will bind it to the Welcome application we already have made. We override here the "model" method.';
		addCode: 'model
	^TodoListModel default';
		addExplanation: 'In QCApplicationModel we have defined an class variable "default". This class variable is created once for all subclasses. We use this class variable as our singleton, so we can access our model from all sessions.';
		yourself