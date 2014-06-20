initialization
initialize
	super initialize.
	self on: QCShowDetails do: [ :ann | self showDetails: ann ]