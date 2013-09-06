accessing
saveLabel
	self isUserQuery ifTrue: [ ^QCMultilanguageString on: 'Save to query' ].
	^QCMultilanguageString on: 'Save to profile'