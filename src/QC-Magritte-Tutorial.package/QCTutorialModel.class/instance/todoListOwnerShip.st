addingProjects
todoListOwnerShip
	<tutorial>
	^QCTutorial new
		priority: 40;
		title: 'Ownership';
		chapter: 'Adding projects';
		description: 'The relation we are going to make between todolist items and projects is an interesting one. Because the model is the owner of the projects, we want a "SingleOption" of the projects. But at the same time we want to indicate the project is an object, that can be opened and edited.';
		addExplanation: 'We have a special type of description for this added in QCMagritte:';
		addCode: 'descriptionGroup
	<magritteDescription>
	^QCToOneOptionRelationDescription new
		label: ''Project'';
		accessor: #project;
		priority: 200;
		classes: { TodoProject };
		yourself';
		addExplanation: 'Now go back to the website and select for a few todoitems the project.';
		yourself