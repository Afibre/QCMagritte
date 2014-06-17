todo-list
todoListDisplayName
	<tutorial>
	^QCTutorial new
		priority: 75;
		title: 'Display name';
		chapter: 'Todo List';
		description: 'When you click on the details of an item, it opens a new page. But the title of this page is still a bit stupid: it states: "a TodoItem". This is in smalltalk default "toString" implementation. We want to change this name into the title.';
		addExplanation: 'In the framework it suffices to change the displayName. This will change all strings that are for the user visible. We add the following method to TodoItem.';
		addCode: 'displayName
	^self title';
		addExplanation: 'We could have simply used "^title". We believe this is not a good practice, as we could later add a "lazy" initialization of the title. We therefor use "self title", such that any code we put in the accessor method (title) will be triggered.';
		addExplanation: 'When you go back to the website you can simply reload the page. It will automatically update the title of the page. This also means that when the title of a todo item changes, this will also be reflected in the page title.';
		yourself