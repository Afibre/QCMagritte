accessing
canEdit: aRow
	self ifLoggedIn: [ ^(self isInEdit: aRow) not and: [ aRow canEdit ] ].
	^false