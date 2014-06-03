accessing
modelConfiguration
	self ifLoggedIn: [  ^self user model configuration ].
	^QCConfiguration defaultConfiguration