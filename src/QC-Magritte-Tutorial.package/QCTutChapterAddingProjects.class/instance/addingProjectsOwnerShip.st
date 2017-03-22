addingProjects
addingProjectsOwnerShip
	<tutorial>
	^QCTutorial new
		priority: 40;
		title: 'Ownership';
		chapter: 'Adding projects';
		description: 'Now we are finally ready to add the magritte description between the todo item and the todo project. The relation we are going to make between todolist items and projects is an interesting one. Because the model is the owner of the projects, we want a "SingleOption" of the projects. But at the same time we want to indicate that the project is an object that can be opened and edited.';
		addExplanation: 'We have a special type of description for this added in QCMagritte:';
		addCode: 'descriptionProject
	<magritteDescription>
	^QCToOneOptionRelationDescription new
		label: ''Project'';
		accessor: #project;
		priority: 250;
		options: self allProjects;
		classes: { TodoProject };
		yourself';
		addExplanation: 'And don''t forget to add the accessor function "allProjects":';
		addCode: 'allProjects
	self model ifNil: [ ^#() ].
	^self model projects';
		addExplanation: 'Now that it is a parentObject, we know what the model is and can therefor access the projects. As a good practice, we want to avoid errors, because of data corruption. First of all we protect this method by checking if we can find the model. Secondly we prefer using the model over the parent, because although now our parent is the model, in the future we might want to decide to change ownership, and this would mean that our parent no longer is the model. Now go back to the website and select for a few todoitems the project.';
		addExplanation: 'If you missed out on some parts, it might be that your implementation is incomplete. Don''t panic when some error occurs, the Seaside framework will help us fix the error. Since we installed the application for development, a debugger should pop up in your image that points you to the error. You can try to fix the errors, while in the debugger.';
		yourself