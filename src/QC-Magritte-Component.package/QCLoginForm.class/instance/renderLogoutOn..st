rendering
renderLogoutOn: canvas
	canvas div: [
		canvas submitButton
			callback: [self logout];
			with: (QCMultilanguageString on: 'logout') ].