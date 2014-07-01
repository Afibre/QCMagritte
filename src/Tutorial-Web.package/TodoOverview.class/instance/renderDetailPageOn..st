rendering
renderDetailPageOn: canvas
	self detailsPage ifNotNil: [ canvas render: self detailsPage ]