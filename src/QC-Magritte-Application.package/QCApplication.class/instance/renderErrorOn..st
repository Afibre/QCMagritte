rendering
renderErrorOn: canvas
	self hasLogin
		ifTrue: [ 
			self isLoggedIn
				ifTrue: [ canvas paragraph: (QCMultilanguageString on: 'You do not have any rights. If this is an error, please contact your administrator.') ]
				ifFalse: [canvas paragraph: (QCMultilanguageString on: 'Please login.') ] ]
		ifFalse: [ canvas paragraph: (QCMultilanguageString on: 'Please add a magritte description with a relation to your model.') ]