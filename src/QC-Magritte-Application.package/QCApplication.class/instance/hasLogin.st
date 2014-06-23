testing
hasLogin
	self model ifNil: [ ^false ].
	^self model hasUserManagement