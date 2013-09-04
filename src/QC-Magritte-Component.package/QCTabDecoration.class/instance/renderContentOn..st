rendering
renderContentOn: canvas
	super renderContentOn: canvas.
	self renderTabsOn: canvas.
	self renderActiveTabOn: canvas