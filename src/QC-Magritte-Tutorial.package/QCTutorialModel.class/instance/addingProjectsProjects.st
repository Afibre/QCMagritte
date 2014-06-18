addingProjects
addingProjectsProjects
	<tutorial>
	^QCTutorial new
		priority: 20;
		title: 'Projects';
		chapter: 'Adding projects';
		description: 'It is very common to have a todo list per project. So we start by adding projects to our model.';
		addExplanation: 'First we need to define a project. For now we only put in a title for the project.';
		addCode: 'QCParentObject subclass: #TodoProject
	instanceVariableNames: ''title''
	classVariableNames: ''''
	category: ''Tutorial-Model''';
		addExplanation: 'After creating the project we use the refactoring menu to add the accessors for the title. Open the menu on TodoProject, and select Refactoring, Class Refactoring, generate accessors. And accept the suggested accessors.';
		addExplanation: 'As you can see there is now a new method category "accessors". It is good practice in smalltalk to put all methods in an appropriate method category. Getters and setters belong in "accessors", Magritte descriptions in "magritte-descriptions", actions in "actions", etc. You can let the system help you by trying to put the methods automatically in a good category. Also drag and drop works here.';
		addExplanation: 'We continue by defining a description for the title. We can simply copy paste this from the TodoItem.';
		addCode: 'descriptionTitle
	<magritteDescription>
	^MAStringDescription new
		accessor: #title;
		label: ''Title'';
		priority: 100;
		beRequired;
		yourself';
		addExplanation: 'We also add the projects to the model. Important here is that the accessor contains an initializer, so we list the code for this here. Don''t forget you also need a setter.';
		addCode: 'projects
	^projects ifNil: [ projects := OrderedCollection new ]';
		addExplanation: 'And the description for the projects:';
		addCode: 'descriptionProjects
	<magritteDescription>
	^MAToManyRelationDescription new
		label: ''Projects'';
		accessor: #projects;
		priority: 300;
		classes: { TodoProject };
		yourself';
		addExplanation: 'When you start a new session, our projects should appear in the menu. Add a few projects, so we have some data. Also do not forget to implement the displayName.';
		yourself