tutorial
booleanDescription
	<tutorial>
	^QCTutorial new
		priority: 30;
		title: 'Boolean description';
		chapter: 'Technical Details';
		description: 'Let''s take this boolean description as a start-point to dive in deeper into the framework. Select the classname "MABooleanDescription" by double clicking it, and press crtl-B (Or cmd-B on a mac) to browse this class.';
		addExplanation: 'Please note the following method:';
		addCode: 'labelForOption: anObject
	anObject == true
		ifTrue: [ ^ self trueString ].
	anObject == false
		ifTrue: [ ^ self falseString ].
	^ self undefined';
		addExplanation: 'This method clearly is the central object that determines how this object is displayed. When you follow the local implementations you will notice that all defaults are on the class side and can be overridden by setting properties. These properties all have accesser methods, and description that describe how they behave (with default and all).';
		addExplanation: 'Now go back to the method "descriptionCompleted" and select the entire statement that returns the boolean description. Press crtl-I to open an inspector on this object. Note that all properties like priority and readonly are set in a dictionary "properties". This mechanism allows the framework to be extended easily by things not native to magritte, such as magritte-seaside.';
		addExplanation: 'Finally, type "self magritteDescription" in the left bottom pane of the inspector, select this and inspect. It will now open an inspector on the magritte description of the boolean description. It gives you a list of all properties that can be set, with default values and such. You will find that most Magritte classes are documented using Magritte.';
		yourself