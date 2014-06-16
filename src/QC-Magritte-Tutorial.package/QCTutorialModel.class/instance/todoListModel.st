todo-list
todoListModel
	<tutorial>
	^QCTutorial new
		priority: 50;
		title: 'Model';
		chapter: 'Todo List';
		description: 'We now have a class that we can show. We need to put this class into a model. The model will be a single access point for the application where all objects are stored. As we use the Bootstrap template, we will use QCBootstrapApplicationModel as our base class for our model';
		addCode: 'QCBootstrapApplicationModel subclass: #TodoListModel
	instanceVariableNames: ''todoItems''
	classVariableNames: ''''
	category: ''Tutorial-Model''';
		addExplanation: 'For the todoListItems we also create a getter and a setter.';
		addCode: 'todoItems
		^todoItems ifNil: [ todoItems := OrderedCollection new ]';
		addExplanation: 'Note that we need to initialize the todoItems so we can add items to it.';
		addCode: 'todoItems: aCollection
		todoItems := aCollection';
		yourself