tutorials
tutorialCreateApplication
	<tutorial>
	^QCTutorial new
		priority: 40;
		title: 'Start new';
		chapter: 'New application';
		description: 'Enough text, let us start by adding some code. First we will need a new application.';
		explanation: 'Create a subclass of QCBootstrapApplication and fill out all the following methods: model and title on the instance side, and application name on the class side. For model we will use this tutorial model.';
		addCode: 'model
		^QCTutorialModel default';
		addCode: 'title
		^''New application''';
		addCode: 'applicationName
		^''New application''';
		yourself
		