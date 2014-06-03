rendering
renderContentOn: canvas
	self isLoggedIn
		ifTrue: [ 
			self renderNavigationButtonsOn: canvas.
			super renderContentOn: canvas ]
		ifFalse: [ self renderNoLoginTextOn: canvas ] 