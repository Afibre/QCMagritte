rendering
renderContentOn: canvas
	canvas form: [ 
		canvas submitButton
			callback: [ self yes ];
			with: self yesLabel.
		canvas submitButton
			callback: [ self no ];
			with: self noLabel ].