accessing
addUser: aUser
	| copy |
	copy := aUser copy.
	copy parent: self.
	copy roles: (OrderedCollection new
		add: (QCAdminRole on: copy);
		yourself).
	self users add: copy