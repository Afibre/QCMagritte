rendering
renderColumnChooserOn: canvas
	self hasColumnChooser ifTrue: [ 
		canvas render: self columnChooser ]