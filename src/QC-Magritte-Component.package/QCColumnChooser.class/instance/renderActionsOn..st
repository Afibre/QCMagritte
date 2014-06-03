rendering
renderActionsOn: canvas
	canvas submitButton
		callback: [ self loadFromProfile ];
		with: (QCMultilanguageString on: 'Reset').
	canvas submitButton
		callback: [ self save ];
		with: self saveCommand label.
	canvas submitButton
		callback: [ self addCustomColumn ];
		with: (QCMultilanguageString on: 'Add column...')