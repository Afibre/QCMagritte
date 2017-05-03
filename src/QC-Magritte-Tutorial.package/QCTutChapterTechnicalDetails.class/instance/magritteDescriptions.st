tutorial
magritteDescriptions
	<tutorial>
	^QCTutorial new
		priority: 20;
		title: 'Descriptions';
		chapter: 'Technical Details';
		description: 'The first part in making your domain model, is describing the properties of your domain model. Usually each object has a number of variables, and each variable is of a certain type. Since Smalltalk uses no type-checking, normally you do not need to define what type each variable has. In Magritte we want to make a much more detailed description of your variable to allow editing.';
		description: 'A typical magritte-description has a type (implicit), accessor, label and priority.';
		addCode: 'descriptionCompleted
	<magritteDescription>
	^MABooleanDescription new
		accessor: #completed;
		label: ''Completed'';
		priority: 300;
		beReadonly;
		yourself';
		addExplanation: 'The first line is a so-called pragma, allowing the magritte framework to know it needs to proces the method as a description.';
		addExplanation: 'The type of this variable is a "boolean", thus a MABooleanDescription is returned. The boolean can be accessed by using the accessor method completed (and implicit the setter is set to completed:). When displayed it should be labeld "Completed" and the priority is 300.';
		addExplanation: 'The priority determines where it is displayed. Why don''t you try modifying the priority to "-1" to see the result.';
		addExplanation: 'The last setting that is made in the description is "readonly", stating it can only be read, and the setter should not be called.';
		yourself