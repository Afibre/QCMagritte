todo-list
todoListConditions
	<tutorial>
	^QCTutorial new
		priority: 90;
		title: 'Conditions';
		chapter: 'Todo List';
		description: 'Now we have links to complete and reopen an item, but this still is a bit awkward. The links are shown always, undependant of the state.';
		addExplanation: 'We are going to add a condition to the commands. This is quite simple as we only need to fill out the paramter for this.';
		addCode: 'containerActions: aContainer
	<magritteContainer>
	^aContainer
		addCommand: ''complete'' condition: #notComplete action: #complete;
		addCommand: ''reopen'' condition: #isComplete action: #reopen;
		yourself';
		addExplanation: 'Of course we need to implement the two method''s that are referenced here too.';
		addCode: 'isComplete
	^self completed';
		addCode: 'notComplete
	^self completed not';
		addExplanation: 'Save these methods and go back to the website and see the changes. Since we always edit the descriptions, and the descriptions are only used on creating the components, we need a new session to actually see these changes. As we proceed, you will notices that for some changes you only have to refresh the page, while for others you will need a new session. Keep this in mind when developing your application.';
		yourself