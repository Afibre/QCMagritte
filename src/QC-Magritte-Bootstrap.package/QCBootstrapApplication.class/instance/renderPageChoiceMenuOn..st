rendering
renderPageChoiceMenuOn: canvas
	super renderPageChoiceMenuOn: canvas.
	self hasLogin ifTrue: [ self renderLoginOn: canvas ]