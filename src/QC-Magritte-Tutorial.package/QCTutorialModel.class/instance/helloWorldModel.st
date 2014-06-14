hello-world
helloWorldModel
	<tutorial>
	^QCTutorial new
		priority: 130;
		title: 'Model';
		chapter: 'Hello world';
		description: 'The QCMagritte application framwork is that it is data driven. This means the our application needs to have a model, to actually do something. We will create a second class to act as a model. Since we have chosen for the bootstrap template, we will inherit our model class that exists in the bootstrap template: QCBootstrapApplicationModel';
		addCode: 'QCBootstrapApplicationModel subclass: #HelloWorldModel
	instanceVariableNames: ''''
	classVariableNames: ''''
	category: ''Hello-World-Model''';
		addExplanation: 'We also need to tell our application what our model is. We do this by overriding the method "model" and return the value "HelloWorldModel default. The message default returns an singleton instance of the application model, that acts as a single access point for our application model.';
		addCode: 'model
	^HelloWorldModel default';
		yourself
		