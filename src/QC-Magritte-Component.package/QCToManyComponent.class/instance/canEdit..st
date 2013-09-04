accessing
canEdit: aRow
	self ifLoggedIn: [ ^(self isInEdit: aRow) not ].
	^false