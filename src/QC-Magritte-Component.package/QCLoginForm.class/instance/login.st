navigation
login
	| user |
	self model
		ifNil: [ self errorText: 'No model set.' ]
		ifNotNil: [ 
			self errorText: nil.
			user := self model userWithId: self userid password: self password.
			user ifNil: [ self errorText: self invalidCombinationText ] ifNotNil: [ self user: user ] ].
	self password: nil