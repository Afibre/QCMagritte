todo-list
todoListConditions
	<tutorial>
	^QCTutorial new
		priority: 90;
		title: 'Conditions';
		chapter: 'Todo List';
		description: 'Now we have links to complete and reopen an item, but this still is a bit awkward. The links are shown always, independant of the state.';
		addExplanation: 'We are going to add a condition to the commands. This is quite simple as we only need to fill out the parameter for this.';
		addCode: 'containerActions: aContainer
	<magritteContainer>
	^aContainer
		addCommand: ''Complete'' condition: #notComplete action: #complete;
		addCommand: ''Reopen'' condition: #isComplete action: #reopen;
		yourself';
		addExplanation: 'Of course we need to implement the two method''s that are referenced here too.';
		addCode: 'isComplete
	^self completed';
		addCode: 'notComplete
	^self completed not';
		addExplanation: 'Save these methods and go back to the website and see the changes. Since we always edit the descriptions, and the description methods are called on creation of the components, we need a new component to actually see these changes. A new session will start everything new, so it will create a new component. As we proceed, you will notice that for some changes you only have to refresh the page, while for others you will need a new session. Keep this in mind when developing your application.';
		yourself