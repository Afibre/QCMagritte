addingProjects
addingProjectsProjects
	<tutorial>
	^QCTutorial new
		priority: 10;
		title: 'Projects';
		chapter: 'Adding projects';
		description: 'It is very common to have a todo list per project. So we start by adding projects to our model.';
		addExplanation: 'First we need to define a project. For now we only put in a title for the project.';
		addCode: 'QCObject subclass: #TodoProject
	instanceVariableNames: ''title''
	classVariableNames: ''''
	category: ''Tutorial-Model''';
		addExplanation: 'After creating the project we use the refactoring menu to add the accessors for the title. Open the menu on TodoProject, and select Refactoring, Class Refactoring, generate accessors. And accept the suggested accessors. We continue by defining a description for the title. We can simply copy paste this from the TodoItem.';
		addCode: 'descriptionTitle
	<magritteDescription>
	^MAStringDescription new
		accessor: #title;
		label: ''Title'';
		priority: 100;
		yourself';
		addExplanation: 'We also add the projects to the model. We change the class definition of the model, adding the variable for projects.';
		addCode: 'QCBootstrapApplicationModel subclass: #TodoListModel
	instanceVariableNames: ''todoItems projects''
	classVariableNames: ''''
	category: ''Tutorial-Model''';
		addExplanation: 'And the description for the projects:';
		addCode: 'descriptionProjects
	<magritteDescription>
	^MAToManyRelationDescription new
	label: ''Projects'';
	accessor: #projects;
	priority: 300;
	classes: { TodoProject };
	yourself';
		addExplanation: 'When you start a new session, our projects should appear in the menu. Add a few projects, so we have some data.';
		yourself