rendering
renderButtonsOn: canvas
	canvas form
		class: 'buttons';
		with: [  
		canvas submitButton
			callback: [ self cancel ];
			with: 'Cancel' asMultilanguageString ]