accessing
querySaveLabel
	self isUserQuery
		ifTrue: [ ^QCMultilanguageString on: 'Save as new query' ].
	^QCMultilanguageString on: 'Save as query'