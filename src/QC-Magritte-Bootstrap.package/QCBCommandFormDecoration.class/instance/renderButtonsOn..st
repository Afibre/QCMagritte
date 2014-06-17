rendering
renderButtonsOn: canvas
	canvas break.
	canvas tbsButtonGroup: [
			self buttons do: [ :each |
				self renderButton: each on: canvas ] ]