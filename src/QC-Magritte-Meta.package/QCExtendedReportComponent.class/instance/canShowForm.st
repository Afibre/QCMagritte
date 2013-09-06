testing
canShowForm
	self ifLoggedIn: [ ^self query canPerform ].
	^false