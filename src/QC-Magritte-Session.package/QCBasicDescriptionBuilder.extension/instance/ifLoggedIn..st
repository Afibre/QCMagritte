*qc-magritte-session
ifLoggedIn: aBlock
	self session ifNotNil: [ :ses | ses ifLoggedIn: aBlock ]