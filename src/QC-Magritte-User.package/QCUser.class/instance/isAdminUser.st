security
isAdminUser
	^self roles contains: [ :each | each isAdminRole ]