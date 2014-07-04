user-management
userManagementTeam
	<tutorial>
	^QCTutorial new
		priority: 40;
		title: 'Team';
		chapter: 'User management';
		description: 'You can see that QC Magritte has the "normal" user management system using CRUD rights available. Now we are going to make things more complex, by creating a team to a project. This team should of course be able to see everything on his/her project, but not on other projects.';
		addExplanation: 'Note: there is a problem here in the bootstrap template ... work in progress';
		addExplanation: 'First we are going to add a description for the team members in the project. Since the team members are actually the normal users, we are going to use the following description:';
		addCode: 'descriptionTeamMembers
	<magritteDescription>
	^QCToManyOptionRelationDescription new
		label: ''Team'';
		accessor: #teamMembers;
		priority: 350;
		classes: { QCUser };
		options: [ self allProjectUsers ];
		yourself';
		addExplanation: 'And since we only want the "normal" users to be part of the project we use this as the accessor:';
		addCode: 'allProjectUsers
	^self model users select: [ :each | each isAdminUser not ]';
		yourself
