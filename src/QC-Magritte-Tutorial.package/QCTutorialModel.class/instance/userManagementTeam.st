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
		classes: { TodoUser };
		options: [ self allProjectUsers ];
		yourself';
		addExplanation: 'And since we only want the "normal" users to be part of the project we use this as the accessor:';
		addCode: 'allProjectUsers
	^self model users select: [ :each | each isAdminUser not ]';
		addExplanation: 'Now go back to the browser and check how it works out. Notice that the manager can now select users and add them to his team and remove them again. He cannot see the roles of these users, as he does not have any rights on the roles. He can change the details of the user (not the userid) and if he adds himself, he can change his own password here.';
	" Bugfix --> must be able to remove.
	Bugfix --> add/remove users to project when:
		- edit project
	AND: - edit user
	Feature: add new users
	"
		yourself
