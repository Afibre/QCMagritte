initialization
createRoles
	" bug "
	^OrderedCollection new
		add: (QCAdminRole on: self);
		yourself