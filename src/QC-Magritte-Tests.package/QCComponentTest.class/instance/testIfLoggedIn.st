tests
testIfLoggedIn
	| session context |
	session := QCSession new.
	context := WARequestContext request: nil response: nil.
	context
		push: session
		during: [ 
			| component |
			component := QCComponent new.
			self deny: component isLoggedIn ].
	session user: Object new.
	context
		push: session
		during: [ 
			| component |
			component := QCComponent new.
			self assert: component isLoggedIn ].
	