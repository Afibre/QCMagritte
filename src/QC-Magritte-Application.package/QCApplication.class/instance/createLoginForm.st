initialization
createLoginForm
	self hasLogin ifFalse: [ ^nil ].
	^self loginFormClass on: self model