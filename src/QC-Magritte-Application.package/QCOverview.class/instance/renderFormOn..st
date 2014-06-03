rendering
renderFormOn: canvas
	self renderMainQueryOn: canvas.
	self renderSearchFormOn: canvas.
	self renderQueryResultsOn: canvas.
	self renderQueryOptionsOn: canvas