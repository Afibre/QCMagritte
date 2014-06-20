initialization
copyUsersFrom: aCollection 
	aCollection do: [ :each |
		| user |
		user := each copy.
		user parent: self.
		self users add: user ]