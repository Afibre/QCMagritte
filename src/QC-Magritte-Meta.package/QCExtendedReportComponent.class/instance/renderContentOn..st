rendering
renderContentOn: canvas
	self renderMainQueryOn: canvas.
	self renderSearchFormOn: canvas.
	self renderQueryResultsOn: canvas.
	self renderQueryEditorOn: canvas