accessing
queryDescription
	self searchString ifEmpty: [ ^QCMultilanguageString on: 'No filter' ].
	^QCMultilanguageString on: 'Filter on ', self searchString