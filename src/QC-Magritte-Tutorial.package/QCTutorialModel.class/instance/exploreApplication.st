explore
exploreApplication
	<tutorial>
	^QCTutorial new
		priority: 60;
		title: 'Application';
		chapter: 'Exploring QCMagritte';
		description: 'This tutorial is written as a QCMagritte application. We will discuss some of the things we have done in this application.';
		addExplanation: 'First note that the package QC-Magritte-Tutorial has 3 "subpackages": component, model and web.';
		addExplanation: 'In web we have all classes that are responsible for showing the website. As we use the bootstrap template here, we only need an application "QCTutorialApplication" and we have a bit of custom layout done in the library "QCTutorialLibrary"';
		addExplanation: 'Notice that on the instance side we have only implemented 2 methods: the model and the title. Both methods are overrides as indicated with the green arrow. The title is shown in the top left corner, the model is linked to the tutorial itself.';
		addExplanation: 'When you press the button "class side" in your class browser, you can see there are 4 methods overridden on the class side. The "applicationName" determines where this application is installed, the "description" is shown in title of the browser window, the "initialize" makes sure this application gets installed on load and finally, the "registerDevelopmentAt:" adds our custom "tutorial" library.';
		yourself
		