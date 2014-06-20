rendering
renderActionsOn: canvas
	canvas tbsButtonGroup: [ 
		canvas tbsButton
			beDefault;
			callback: [ self loadFromProfile ];
			with: (QCMultilanguageString on: 'Reset').
		canvas tbsButton
			beDefault;
			callback: [ self save ];
			with: self saveCommand label.
		canvas tbsButton
			beDefault;
			callback: [ self addCustomColumn ];
			with: (QCMultilanguageString on: 'Add column...') ]