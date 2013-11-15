rendering
renderContentOn: canvas
	canvas tbsAlert: self text.
	canvas form: [ 
		canvas tbsButton on: #ok of: self ]