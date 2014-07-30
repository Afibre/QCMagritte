accessing
model
	self ifLoggedIn: [  ^self user model ].
	^nil
