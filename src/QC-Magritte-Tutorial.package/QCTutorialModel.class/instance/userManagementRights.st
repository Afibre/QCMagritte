user-management
userManagementRights
	<tutorial>
	^QCTutorial new
		priority: 20;
		title: 'Rights';
		chapter: 'User management';
		description: 'Having defined users is only the first step. Just try and add a user role and a user to the system. You will notice that there are still some things to be configured.';
		addExplanation: 'First of all we need to define that classes that have rights in our system. By default all classes marked with "hasUserRights" will appear in the list. We probably want to narrow this list further. For this we override the "allModelClasses"';
		addCode: 'allModelClasses
	^(RPackage organizer packageNamed: ''Tutorial-Model'') classes';
		addExplanation: 'In smalltalk we can inspect all classes in the system. They are organized in "packages". In order to create a list of all classes we have modelled, we can limit ourself to the pacakge "Tutorial-Model". Go back to the site and check what rights we can add to a role now.';
		addExplanation: 'As you can see, not all classes are shown. Only the classes with the flag "hasUserRights" will show up. We will add the TodoProjects and TodoItems to the list, by adding the following method to the class side of these classes';
		addCode: 'hasUserRights
	^true';
		addExplanation: 'Now go back to the site and check again. Now it is time to put security in place. Set the following method in your application model:';
		addCode: 'hasUserManagement
	^true';
		addExplanation: 'Did you forget to add an admin user like me? Then you should still be able to add a user. Please do so now, and give him the role of admin.';
		yourself
