rendering
renderContentOn: canvas
	self messages
		ifEmpty: [ self renderUploadFormOn: canvas ]
		ifNotEmpty: [ self renderMessagesOn: canvas ].
	canvas break.
	canvas break.
	canvas form: [ self renderButtonsOn: canvas ]