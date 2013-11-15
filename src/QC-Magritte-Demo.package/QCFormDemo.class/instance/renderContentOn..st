rendering
renderContentOn: canvas
	canvas heading: self label.
	self message ifNotNil: [ 
		canvas paragraph
			class: 'error-message';
			with: self message.
		canvas horizontalRule ].
	canvas paragraph: 'This is a simple form demo. It shows the use of AJAX, by having some fields that propagate some values. Note that this renderer, rerenders the group on an event, so the influences only work within a group.'.
	canvas form: [ 
		canvas button
			callback: [ self showSimpleForm ];
			with: 'Show simple object'.
		"canvas button
			callback: [ self showComposedForm ];
			with: 'Show composed object'.		
		canvas button
			callback: [ self showForm ];
			with: 'Show form'" ].