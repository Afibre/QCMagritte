session
user
	self session ifNotNil: [ ^self session user ].
	^nil