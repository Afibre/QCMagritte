running
matches: aValue description: aDescription 
	aValue ifNil: [ ^false ].
	aValue isString ifTrue: [ ^self matches: aValue ].
	aValue isCollection ifTrue: [ ^false ].
	^self matches: (aDescription toString: aValue)