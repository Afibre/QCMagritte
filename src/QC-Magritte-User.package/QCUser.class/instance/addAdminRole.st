accessing
addAdminRole
	^self roles detect: [ :each | each isAdminRole ] ifNone: [ self roles add: self parent adminRole ]