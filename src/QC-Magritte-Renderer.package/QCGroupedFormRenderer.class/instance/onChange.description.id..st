rendering
onChange: canvas description: aDescription id: anId
	| tmp |
	errors := nil.
	component validate.
	[
		tmp := html.
		html := canvas.
		self renderControlsFor: aDescription id: anId ] ensure: [ html := tmp ]