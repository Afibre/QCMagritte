rendering
renderLoginOn: canvas
	canvas table: [
		canvas tableRow: [
			canvas tableData: (QCMultilanguageString on: 'Userid:').
			canvas tableData: [ canvas textInput on: #userid of: self ] ].
		canvas tableRow: [
			canvas tableData: (QCMultilanguageString on: 'Password:').
			canvas tableData: [ canvas passwordInput on: #password of: self ] ] ].
		canvas submitButton
			callback: [ self login ];
			with: (QCMultilanguageString on: 'login')