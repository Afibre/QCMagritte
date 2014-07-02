security
canChangePassword
	self ifLoggedIn: [ ^(self user = self) or: [ self user isAdminUser ] ].
	^false