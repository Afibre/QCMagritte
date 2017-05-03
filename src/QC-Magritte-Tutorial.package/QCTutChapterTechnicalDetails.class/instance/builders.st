tutorial
builders
	<tutorial>
	^QCTutorial new
		priority: 60;
		title: 'Builders';
		chapter: 'Technical Details';
		description: 'Following the guideline, make it work, make it right, make it fast, the code now needs to be made right, because for a number of reasons the code "componentClass: MARadioButtonComponent" does not belong there.';
		addExplanation: 'First of all it breaks our nice domain model, and pollutes it with display code. This only works if I display the thing with Seaside. So for making it work this is fine, but not in your final code.';
		addExplanation: 'Secondly, you usually want to use the same component for displaying a boolean. Having to add this code for all boolean descriptions is code duplication, with all disadvantages of code duplication.';
		addExplanation: 'So we are going to clean this code up, by using a builder. First we need to define a builder class. This builder class belongs in the web-part, so we define our builder-class as follows:';
		addCode: 'MADescriptionBuilder subclass: #TodoListBuilder
	instanceVariableNames: ''''
	classVariableNames: ''''
	package: ''Tutorial-Web''';
		addExplanation: 'This builder belongs in the subpackage "web" as it determines how things look. Now we need to install this builder in the model. We use as a category "*Tutorial-Web" to indicate it is an extension method and belongs in the package "Web".';
		addCode: 'tutorialBuilder: aCollection
	<magritteBuilder>
	aCollection add: TodoListBuilder';
		addExplanation: 'Now finally we need to implement the converter. Don''t forget to add a super call, since we do not want to break the visitor, visiting all nodes.';
		addCode: 'visitBooleanDescription: aBooleanDescription
	aBooleanDescription componentClass: MARadioGroupComponent.
	super visitBooleanDescription: aBooleanDescription';
		addExplanation: 'Remove the original componentClass: call in the description, and see the radiogroup is still inserted.';
		yourself