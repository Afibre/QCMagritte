security
canChangePassword
	^(self user = self) or: [ self user isAdminUser ]