addingProjects
addingProjectsRename
	<tutorial>
	^QCTutorial new
		priority: 10;
		title: 'Renaming application';
		chapter: 'Adding projects';
		description: 'Since our application is starting to get a serious application, we are going to rename it into TodoApplication.';
		addExplanation: 'First we are going to rename the class, using the refactoring tools of Smalltalk. Right-click on the project to get the menu, and select rename... input: "TodoApplication" in the dialog.';
		addExplanation: 'Secondly we are going to change the title and the applicationName. Note that the application name is a method on the class side. For this we need to check the box "class side" in the system browser. Then add the following method:';
		addCode: 'applicationName
	^''TodoList''';
		addExplanation: 'Notice that the green triangle indicates you have overridden an existing method. Also don''t forget to switch back to the instance side.';
		addExplanation: 'Since we now have an application name, we can register this application with "TodoApplication regisiterForDevelopment". Now go back to the website and browse the installed applications. Notice that we have added TodoList, and that the HelloWorld application is also still there. When you open the HelloWorld applicatino, it points to our changed class of TodoApplication. We want to remove this application, using the configuration app of seaside. Go to "http://localhost:8080/config" and remove the HelloWorld application.';
		yourself