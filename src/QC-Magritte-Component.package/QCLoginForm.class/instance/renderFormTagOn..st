rendering
renderFormTagOn: canvas
	^canvas form
		id: 'login-form';
		class: 'login-form';
		class: (self session isLoggedIn asString);
		yourself