rendering
renderContentOn: canvas 
	canvas form
		id: 'login-form';
		class: 'login-form';
		class: (self session isLoggedIn asString);
		with: [
			self renderTitleOn: canvas.
			self isLoggedIn
				ifTrue: [ self renderLogoutOn: canvas ]
				ifFalse: [ self renderLoginFormOn: canvas ] ]
