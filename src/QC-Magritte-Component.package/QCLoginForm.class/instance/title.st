accessing
title
	self session isLoggedIn ifTrue: [ ^ self loggedInText ].
	^self welcomeText