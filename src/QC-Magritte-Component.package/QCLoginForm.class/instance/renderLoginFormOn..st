rendering
renderLoginFormOn: canvas
	canvas form
		class: 'login-form';
		with: [
			self titleInForm ifTrue: [ self renderTitleOn: canvas ].
			canvas div: [ self renderLoginOn: canvas ].
			self errorText ifNotNil: [ canvas span
				class: 'errorText';
				with: self errorText ] ]