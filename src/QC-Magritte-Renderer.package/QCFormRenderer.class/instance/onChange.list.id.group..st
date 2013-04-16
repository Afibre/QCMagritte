rendering
onChange: canvas list: aList id: anId group: aGroup
	| tmpCanvas tmpGroup |
	errors := nil.
	component validate.
	tmpCanvas := html.
	tmpGroup := group.
	[	html := canvas.
		group := aGroup.
		self renderGroupContent: aList id: anId ] ensure: [ 
		html := tmpCanvas.
		group := tmpGroup ]