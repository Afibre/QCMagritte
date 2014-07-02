*qc-magritte-user
userWithId: idString password: passwordString
	| user |
	user := self userWithId: idString.
	user ifNil: [ ^nil ].
	(user verifyPassword: passwordString)
		ifTrue: [ 
			user correctPassword.
			^user ]
		ifFalse: [
			user wrongPassword.
			^nil ]
