events
announcer
	self model ifNotNilDo: [ :mod | ^mod announcer ].
	^nil