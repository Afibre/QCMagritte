todo-list
todoListItem
	<tutorial>
	^QCTutorial new
		priority: 30;
		title: 'Todo item';
		chapter: 'Todo List';
		description: 'Start the QCMagritte One-Click Experience and in the System Browser click on an item in teh first column to get a new class-creation template. Edit the template to match the following and save the text.';
		addCode: 'QCObject subclass: TodoItem
		instanceVariableNames: ''title description completed''
		classVariableNames:''''
		category:''Todo-List-Model''';
		explanation: 'This creates a new subclass of QCObject named "TodoItem", gives it three instance variabes ("title", "description" and "completed") and puts it in the "Todo-List-Model" category.';
		yourself
		