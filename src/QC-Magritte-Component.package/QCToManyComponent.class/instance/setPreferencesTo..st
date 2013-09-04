user
setPreferencesTo: aDescription 
	self ifLoggedIn: [ self user setPreferencesTo: aDescription ].