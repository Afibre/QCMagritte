accessing
username
	self ifLoggedIn: [ ^self user username ].
	^'No user logged on'