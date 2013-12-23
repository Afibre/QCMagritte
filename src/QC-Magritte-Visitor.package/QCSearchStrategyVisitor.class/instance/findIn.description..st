accessing
findIn: aValue description: aDescription
	aValue ifNil: [ ^false ].
	^(aDescription toString: aValue) matches: searchString