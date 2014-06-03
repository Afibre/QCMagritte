accessing
isLoggedIn
	(self session respondsTo: #isLoggedIn) ifFalse: [ ^nil ].
	^self session isLoggedIn