rendering
renderQueryEditorOn: canvas
	self isOptionsVisible
		ifTrue: [ canvas render: self queryOptionsComponent ]