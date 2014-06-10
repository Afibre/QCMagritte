rendering
renderSelectButtonsOn: canvas
	self canAdd ifTrue: [
		self renderSelectListOn: canvas ].
	self hasChanged ifTrue: [
		canvas submitButton
			callback: [ self save ];
			with: (QCMultilanguageString on: 'Confirm removal') ]