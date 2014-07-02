rendering
renderLogoutOn: canvas
	canvas tbsForm: [
		self titleInForm ifTrue: [ self renderTitleOn: canvas ].
		canvas tbsNavbarButton
			callback: [self logout];
			with: 'Logout' ].