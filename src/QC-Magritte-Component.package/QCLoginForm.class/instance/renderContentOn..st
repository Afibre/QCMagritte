rendering
renderContentOn: canvas 
	(self renderFormTagOn: canvas)
		with: [
			self titleInForm ifFalse: [ self renderTitleOn: canvas ].
			self isLoggedIn
				ifTrue: [ self renderLogoutOn: canvas ]
				ifFalse: [ self renderLoginFormOn: canvas ] ]
