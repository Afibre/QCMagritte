initialization
initialize
	super initialize.
	self initializeMenu.
	" subscribe to events to display details "
	self on: QCShowDetails do: [ :ann | self showDetails: ann ].
	self on: QCShowQuery do: [ :ann | self showQuery: ann ].
	" subscribe to the login event "
	self on: QCSessionStateChanged do: [ :ann | self updatePagesFor: ann ]