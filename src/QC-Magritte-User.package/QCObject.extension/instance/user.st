*qc-magritte-user
user
	self session ifNotNil: [ ^self session user ].
	^nil