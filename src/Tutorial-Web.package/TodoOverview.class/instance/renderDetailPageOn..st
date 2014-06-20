rendering
renderDetailPageOn: canvas
	self detailsPage ifNotNil: [
		canvas heading
			level: 2;
			with: self detailsPage target displayName.
		canvas render: self detailsPage ]