rendering
renderLoginOn: canvas
	| focusId |
	canvas table: [
		canvas tableRow: [
			canvas tableData: (QCMultilanguageString on: 'Userid:').
			canvas tableData: [ 
				| textInput |
				textInput := canvas textInput.
				self userid ifNil: [ focusId := textInput ensureId ].
				textInput on: #userid of: self ] ].
		canvas tableRow: [
			canvas tableData: (QCMultilanguageString on: 'Password:').
			canvas tableData: [ 
				| passwordInput |
				passwordInput := canvas passwordInput.
				self userid ifNotNil: [ focusId := passwordInput ensureId ].
				passwordInput on: #password of: self ] ] ].
		canvas script: (canvas jQuery: 'form #', focusId) triggerFocus.
		canvas submitButton
			callback: [ self login ];
			with: (QCMultilanguageString on: 'login')