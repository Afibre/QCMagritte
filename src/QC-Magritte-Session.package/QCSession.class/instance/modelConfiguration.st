accessing
modelConfiguration
	self ifLoggedIn: [  ^self model configuration ].
	^QCConfiguration defaultConfiguration