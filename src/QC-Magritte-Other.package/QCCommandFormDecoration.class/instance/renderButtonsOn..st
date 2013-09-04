as yet unclassified
renderButtonsOn: html
	html div class: 'buttons'; with: [
		self buttons do: [ :each |
			self renderButton: each on: html ] ]