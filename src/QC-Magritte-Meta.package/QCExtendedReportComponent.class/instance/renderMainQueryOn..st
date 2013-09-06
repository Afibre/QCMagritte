rendering
renderMainQueryOn: canvas
	self isUserQuery
		ifTrue: [ canvas render: self queryComponent ]