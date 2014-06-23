user-management
userManagementUsers
	<tutorial>
	^QCTutorial new
		priority: 20;
		title: 'Users';
		chapter: 'User management';
		description: 'Having defined users is only the first step. Just try and add a user role and a user to the system. You will notice that there are still some things to be configured.';
		addExplanation: 'First of all we need to define that classes that have rights in our system. By default you can set rights to the user overview.';
		addCode: 'QCUser subclass: #TodoUser
	instanceVariableNames: ''''
	classVariableNames: ''''
	category: ''Tutorial-Model''';
		addExplanation: 'We also customize the user role.';
		addCode: 'QCModifyableUserRole subclass: #TodoUserRole
	instanceVariableNames: ''''
	classVariableNames: ''''
	category: ''Tutorial-Model''';
		addExplanation: 'Now we can create a customized user overview. We have 2 overrides in the class:';
		addCode: 'userClasses
	^{ TodoUser }';
		addCode: 'userRoles
	^{ TodoUserRole }';
		addExplanation: 'As we create our users and roles using QC Magritte, the useroverview has a magritte description for both. We specify here the classes that can be expected and created by the user. We now add the user overview to the model. We add an instance variable for this with accessors and the following magritte description:';
		addCode: 'descriptionUserOverview
	<magritteDescription>
	^MAToOneRelationDescription new
		label: ''Users'';
		accessor: #userOverview;
		priority: 50;
		classes: { TodoUserOverview };
		beRequired;
		yourself';
		addExplanation: 'Go back to your application and see how it looks. Did you remember to add the initialization code for the userOverview?';
		yourself
		