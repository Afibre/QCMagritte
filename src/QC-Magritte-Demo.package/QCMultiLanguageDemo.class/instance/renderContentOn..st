rendering
renderContentOn: canvas
	canvas heading: self label.
	self explanation ifTrue: [
		canvas paragraph: (QCMultilanguageString on: 'This is the place where you can set and edit the multi language strings').
		canvas paragraph: (QCMultilanguageString on: 'Of course this demo is also multi language').
		self renderSmalltalkOn: canvas source: (self sourceCodeFor: #setDefaultsForContainer: in: QCDemoConfiguration).
		canvas horizontalRule.
		canvas paragraph: (QCMultilanguageString on: 'After adding a language, you need to reset the configuration component. Use this button, or start a new session.') ].
	canvas form: [ 
		canvas submitButton
			callback: [ self resetConfigComponent ];
			with: (QCMultilanguageString on: 'Reset').
		canvas submitButton
			callback: [ self toggleExplanation ];
			with: (QCMultilanguageString on: 'Explanation on/off') ].
	self explanation ifTrue: [ canvas horizontalRule ].
	canvas render: self configComponent
	