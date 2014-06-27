rendering
renderQueryOptionsOn: canvas
	self isOptionsVisible
		ifTrue: [ canvas render: self queryOptionsComponent ]