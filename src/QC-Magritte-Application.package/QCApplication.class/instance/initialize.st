initialization
initialize
	super initialize.
	self initializeMenu.
	" subscribe to events to display details "
	self on: QCShowDetails do: [ :ann | self showDetails: ann ].
	self on: QCShowQuery do: [ :ann | self showQuery: ann ]