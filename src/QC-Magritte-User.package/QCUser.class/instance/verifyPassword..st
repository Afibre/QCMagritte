security
verifyPassword: aString
	^(self hashPassword: aString) = self passwordHash.