initialization
createRoles
	^OrderedCollection new
		add: (QCAdminRole on: self);
		yourself