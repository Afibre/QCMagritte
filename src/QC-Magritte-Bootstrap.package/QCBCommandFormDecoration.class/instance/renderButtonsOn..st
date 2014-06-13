rendering
renderButtonsOn: canvas
	canvas tbsButtonGroup: [
		self buttons do: [ :each |
			self renderButton: each on: canvas ] ]