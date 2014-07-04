accessing
addUser: aUser
	| copy |
	copy := aUser copy.
	copy parent: self.
	copy roles: (OrderedCollection new
		add: (self adminRoleClass on: copy);
		yourself).
	self users add: copy