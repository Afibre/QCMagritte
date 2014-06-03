accessing
buildChildren
	^self form formItems inject: Dictionary new into: [ :retVal :formItem |
		retVal at: formItem put: (formItem createComponentOn: self memento: self memento).
		retVal ]