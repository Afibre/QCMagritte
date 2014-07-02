rendering
renderLogoutOn: canvas
	canvas tbsForm: [
		canvas tbsNavbarButton
			callback: [self logout];
			with: 'Logout' ].