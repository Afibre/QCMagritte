addingProjects
addingProjectsOwnerShip
	<tutorial>
	^QCTutorial new
		priority: 40;
		title: 'Ownership';
		chapter: 'Adding projects';
		description: 'Now we are finally ready to add the magritte description between the todo item and the todo project. The relation we are going to make between todolist items and projects is an interesting one. Because the model is the owner of the projects, we want a "SingleOption" of the projects. But at the same time we want to indicate the project is an object, that can be opened and edited.';
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
	^self model allProjects';
		addExplanation: 'Now that we are a parentObject, we know what the model is. We prefer using the model over the parent, because we might decide to change ownership, and this would mean that our parent no longer is the model. Now go back to the website and select for a few todoitems the project.';
		yourself