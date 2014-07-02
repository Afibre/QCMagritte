rendering
renderLoginOn: canvas
	| focusId |
	canvas tbsFormGroup: [
		| textInput |
		canvas label for: 'Userid:'; class: 'sr-only'; with: 'User id'.
		textInput := canvas textInput tbsFormControl; placeholder: 'Enter userid'.
		self userid ifNil: [ focusId := textInput ensureId ].
		textInput on: #userid of: self.
		canvas space].
	canvas tbsFormGroup: [
		| passwordInput |
		canvas label for: 'Password:'; class: 'sr-only'; with: 'User id'.
		passwordInput := canvas passwordInput tbsFormControl; placeholder: 'Enter password'.
		self userid ifNotNil: [ focusId := passwordInput ensureId ].
		passwordInput on: #password of: self.
		canvas space].
	canvas script: (canvas jQuery: 'form #', focusId) triggerFocus.
	canvas tbsNavbarButton
		callback: [ self login ];
		with: 'Login'