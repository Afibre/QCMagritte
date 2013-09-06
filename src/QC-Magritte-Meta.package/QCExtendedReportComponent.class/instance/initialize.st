initialization
initialize
	super initialize.
	self on: QCSessionStateChanged do: [ :ann | self updateSessionState ]