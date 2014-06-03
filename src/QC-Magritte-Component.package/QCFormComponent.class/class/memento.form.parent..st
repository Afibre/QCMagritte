instance creation
memento: aMemento form: aForm parent: aComponent
	^ self new
		setMemento: aMemento;
		setForm: aForm;
		setParent: aComponent;
		yourself