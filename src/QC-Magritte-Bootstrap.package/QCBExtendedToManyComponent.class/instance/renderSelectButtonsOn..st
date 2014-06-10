rendering
renderSelectButtonsOn: canvas
	canvas tbsButtonGroup: [
		self canAdd ifTrue: [ self renderSelectListOn: canvas ].
		self hasChanged ifTrue: [
			canvas tbsButton
				beDefault;
				callback: [ self save ];
				with: (QCMultilanguageString on: 'Confirm removal') ] ]