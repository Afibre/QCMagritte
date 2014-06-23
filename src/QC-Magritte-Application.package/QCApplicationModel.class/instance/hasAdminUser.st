security
hasAdminUser
	^self users contains: [ :each | each isAdminUser ]