navigation
login
	| user |
	self errorText: nil.
	user := QCModel userWithId: self userid password: self password.
	user
		ifNil: [ self errorText: self invalidCombinationText ]
		ifNotNil: [ self user: user ].
	self password: nil