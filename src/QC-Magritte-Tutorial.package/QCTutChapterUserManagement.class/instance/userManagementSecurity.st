user-management
userManagementSecurity
	<tutorial>
	^QCTutorial new
		priority: 30;
		title: 'Security';
		chapter: 'User management';
		description: 'Having an admin will start the user management. Having user management means you can login. This was added to the header of the page. Also not everything is visible any more. We cannot add users or projects.';
		addExplanation: 'User management works as follows: an admin can see all things and modify them. A guest with no login can see all objects that have no security set. Since we set security to the projects and not to the todo items, people will be able to add todo items.';
		addExplanation: 'Notice that the project is removed properly. A todo item may have a project, but this project is not visible in the overview. Also opening the details, the project will not show up. Guests will not be able to modify the project of the todo item, because he is not allowed to read projects.';
		addExplanation: 'Now we are going to create a Reader, someone who is allowed to see projects but nothing more. Login with your admin user, and create a role with the title "Reader". Add the right "R" (read) for the modelclass "TodoProject" to this role. Now create a user ("reader") with only the role "Reader" and login with the new user. Here you can see that this user is allowed to see projects, and can change the project in the todo items. But he cannot add projects or change projects. Notice that he can still add todo items to a project, by assigning a todo item to a certain project.';
		addExplanation: 'Now we are going to create a Project managemer. He is allowed to create, change and update projects. Updating only concerns the title. Login as admin again, and create a role "manager" with the rights "C" (create), "R" (read) and "U" (update) for the modelclass "TodoProject". Also give him the right "R" on TodoUser. Do not give him the right "D" (destroy). Also create a user with this role and see that he can add projects. He will not be able to see users, as this is in the menu "UserOverview" and he does not have rights on this.';
		addExplanation: 'We finally want to add a "useradmin", that is allowed to create users, reset passwords and assign roles. Note that for this we have to add 3 rights. For the useroverview (R), for the users (CRU) and for the roles (R). Now try and add a user with both the role useradmin and reader. See that this person can read projects and add users.';
		yourself
