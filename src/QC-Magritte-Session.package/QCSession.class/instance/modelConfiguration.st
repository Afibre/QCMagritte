accessing
modelConfiguration
	self ifLoggedIn: [  ^self user model configuration ].
	^QCModel default configuration