todo-list
todoListSetters
	<tutorial>
	^QCTutorial new
		priority: 20;
		title: 'Setters';
		chapter: 'Todo List';
		description: 'Next we will define a couple ‘setters’ that store the value in the instance variable. As documentation we will put the name of the expected type in the variable name';
		addCode: 'title: aString
		title := aString';
		addCode: 'description: aString
		^description := aString';
		addCode: 'completed: aBoolean
		completed := aBoolean';
		yourself