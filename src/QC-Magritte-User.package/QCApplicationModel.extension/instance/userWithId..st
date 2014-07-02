*qc-magritte-user
userWithId: idString
	| lowercaseIdString |
	lowercaseIdString := idString asLowercase.
	^self users
		detect: [:each | each notNil and: [ each userid = lowercaseIdString ] ]
		ifNone: [nil].