rendering
renderLoginFormOn: canvas
	canvas form
		class: 'login-form';
		with: [
			canvas div: [ self renderLoginOn: canvas ].
			self errorText ifNotNil: [ canvas span
				class: 'errorText';
				with: self errorText ] ]