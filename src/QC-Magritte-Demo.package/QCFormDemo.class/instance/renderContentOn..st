rendering
renderContentOn: canvas
	canvas heading: self label.
	self message ifNotNil: [ 
		canvas paragraph
			class: 'error-message';
			with: self message.
		canvas horizontalRule ].
	canvas paragraph: 'This is a simple form demo'.
	canvas form: [ 
		canvas button
			callback: [ self showForm ];
			with: 'Show form' ].