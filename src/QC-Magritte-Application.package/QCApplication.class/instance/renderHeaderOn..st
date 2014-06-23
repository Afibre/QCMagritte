rendering
renderHeaderOn: canvas
	self hasLogin ifTrue: [ self renderLoginOn: canvas ].
	self renderHeaderTextOn: canvas