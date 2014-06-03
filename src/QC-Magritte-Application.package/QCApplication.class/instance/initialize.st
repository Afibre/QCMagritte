initialization
initialize
	super initialize.
	self initializeMenu.
	" subscribe to events to display details "
	self announcer
		on: QCShowDetails
		do: [ :ann | self showDetails: ann ].
	self announcer
		on: QCShowQuery
		do: [ :ann | self showQuery: ann ].
	self announcer
		on: QCShowNewQuery
		do: [ :ann | self showNewQuery: ann ]