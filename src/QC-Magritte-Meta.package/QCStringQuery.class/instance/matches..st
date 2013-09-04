running
matches: aValue
	self searchString ifEmpty: [ ^true ].
	aValue isString ifTrue: [ ^aValue matches: searchString ].
	aValue isCollection ifTrue: [ ^false ].
	^aValue asString matches: searchString