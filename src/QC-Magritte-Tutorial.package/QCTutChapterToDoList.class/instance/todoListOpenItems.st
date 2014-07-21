todo-list
todoListOpenItems
	<tutorial>
	^QCTutorial new
		priority: 100;
		title: 'Open items';
		chapter: 'Todo List';
		description: 'Finally we are going to make one last change to complete this chapter.';
		addExplanation: 'We are going to add a second description to our model. Instead of showing all todo items, we only want to show the incomplete todo items. Since this method looks very much like our first description, we first select the description. First we are going to save this as a different method by changing the first line into: "descriptionOpenItems", and then save.';
		addExplanation: 'By saving the same method under a different name, we automatically have a copy of the method. Now we change the accessor of this copy into: #openItems", set the priority into 100 and the label to "Open todo''s". The result should look like this:';
		addCode: 'descriptionOpenItems
	<magritteDescription>
	^MAToManyRelationDescription new
		label: ''Open items'';
		accessor: #openItems;
		priority: 100;
		classes: { TodoItem };
		yourself';
		addExplanation: 'In the original method we change the label into: "All items" and the priority into 200. Finally we need to implement the new accessors.';
		addCode: 'openItems
	^self todoItems select: [ :each | each notComplete ]';
		addExplanation: 'The "select:" method returns a collection with only the items for those the block will evaluate to "true".';
		addCode: 'openItems: aCollection
	self openItems do: [ :each |
		(aCollection includes: each) ifFalse: [ self todoItems remove: each ] ].
	aCollection do: [ :each |
		(self todoItems includes: each) ifFalse: [ self todoItems add: each ] ]';
		addExplanation: 'When you edit a collection in Magritte, Magritte assigns the whole collection to the object after the change. So you will not notice any individual add or remove actions. So we need to implement here the difference. First we check for all removals, then we check for all new items.';
		yourself