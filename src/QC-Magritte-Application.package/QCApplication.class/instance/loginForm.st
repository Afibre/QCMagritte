accessing
loginForm
	^loginForm ifNil: [ loginForm := self createLoginForm ]