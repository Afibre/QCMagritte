tutorial
defaults
	<tutorial>
	^QCTutorial new
		priority: 40;
		title: 'Defaults';
		chapter: 'Technical Details';
		description: 'The default values of Magritte can be found on the class side of each class. As we have seen, we have a default for the boolean for the "true" and the "false".';
		addExplanation: 'Let''s make our description more accurate stating that for completed we need a "yes" and a "no" instead of a "true" and a "false". Add the following property lines to the description:';
		addCode: '		trueString: ''yes'';
		falseString: ''no'';';
		addExplanation: 'Now start a new session and see that all items now have a nice desciption.';
		addExplanation: 'We furthermore want the description only to be shown when it is already set. We do this by inserting a precondition in the descriptionCompleted. When the title is not set properly: return nil.';
		addExplanation: 'Now go and look at the result by adding another todo-item. And then look at the details. The new todo item should no longer have a "completed" property, while an existing todo item has.';
		addExplanation: 'Unfortunately this also removes the "completed" from the list. Since we now want to learn about the technical details of Magritte, and not yet QC Magritte, I give the fix here without much explanation. We need to set a defaultMagritteTemplate to the TodoItemClass, using following code.';
		addCode: 'defaultMagritteTemplate
	^self new
		title: ''template'';
		yourself';
		addExplanation: 'Before this takes in effect, we also need to reset the default template using: "TodoItem resetDefaultTemplate.';
		yourself