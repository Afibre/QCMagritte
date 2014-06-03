rendering
renderContentOn: canvas
	self hasSearchForm ifTrue: [ self renderSearchFormOn: canvas ].
	super renderContentOn: canvas.
	self renderQueryOptionsOn: canvas