security
ifLoggedIn: aBlock 
	self isLoggedIn ifTrue: [ aBlock cull: self user ]