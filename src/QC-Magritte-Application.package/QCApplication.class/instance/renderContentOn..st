rendering
renderContentOn: canvas
	self hasKeepAlive
		ifTrue: [ self renderKeepAliveOn: canvas ].
	self renderHeaderOn: canvas.
	super renderContentOn: canvas