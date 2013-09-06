accessing
ifLoggedIn: aBlock
	(self session respondsTo: #ifLoggedIn:) ifFalse: [ ^nil ].
	self session ifLoggedIn: [ ^aBlock value ].
	^nil