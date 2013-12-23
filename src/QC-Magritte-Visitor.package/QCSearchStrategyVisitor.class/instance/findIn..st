accessing
findIn: aValue
	aValue ifNil: [ ^false ].
	^aValue asString matches: searchString