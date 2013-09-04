accessing
canShowDetails: aRow 
	self ifLoggedIn: [ ^(self isInEdit: aRow) not ].
	^true