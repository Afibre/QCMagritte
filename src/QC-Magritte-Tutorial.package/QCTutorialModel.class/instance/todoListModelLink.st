todo-list
todoListModelLink
	<tutorial>
	^QCTutorial new
		priority: 60;
		title: 'Link to application';
		chapter: 'Todo List';
		description: 'Finally we need to link our model to the application. As this is simply a demo, we will bind it to the Welcome application we already have made. We override here the "model" method.';
		addCode: 'model
		^TodoListModel default';
		addExplanation: 'In QCApplicationModel we have defined an class variable "default". This class variable is created once for all subclasses. We use this class variable as our singleton, so we can access our model from all sessions.';
		addExplanation: 'Before we test we need to remember we have overridden the "renderCurrentPage:" method. We need to remove this. Select the method, right click on the method and select "remove" from the list. You will get a warning that this message is used. Confirm that you want to delete this method.';
		yourself