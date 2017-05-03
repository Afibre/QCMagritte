tutorial
components
	<tutorial>
	^QCTutorial new
		priority: 50;
		title: 'Using components';
		chapter: 'Technical Details';
		description: 'For the boolean description you can find another default in the method "defaultComponentClasses" in the categorie "*magritte-seaside-defaults", indicating that this default is in an extension for Seaside. It determines the default components that can be used to display this object using seaside.';
		addCode: 'defaultComponentClasses
	^ Array with: MACheckboxComponent with: MASelectListComponent with: MARadioGroupComponent';
		addExplanation: 'It actually lists 3 default classes that can be used to display a boolean. The first is used when nothing else is configured. Let''s try out setting the component class. First browse the senders and note that there is a description that uses the defaultComponentClasses as the valid options to select from. To experiment with this component class, add a new boolean description "priority".';
		addCode: 'descriptionPriority
	<magritteDescription>
	^MABooleanDescription new
		accessor: #priority;
		label: ''Priority'';
		trueString: ''high'';
		falseString: ''low'';
		priority: 350;
		componentClass: MARadioGroupComponent;
		yourself';
		addExplanation: 'Don''t forget to add accessors and give it a try starting a new session. You should see that this boolean is rendered differently. This allows you to also use a custom (sub)class to render the component exactly how it should be rendered.';
		yourself