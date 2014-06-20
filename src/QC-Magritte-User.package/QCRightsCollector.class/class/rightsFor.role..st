instance creation
rightsFor: aDescription role: aRole
	^(self on: aRole)
		visit: aDescription;
		rights