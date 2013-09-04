accessing
canRemove: aRow
	self ifLoggedIn: [ ^(self isInEdit: aRow) not and: [ aRow canRemove ] ].
	^false