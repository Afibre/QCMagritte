accessing
matches: aValue searchValue: aSearchValue
	aValue isString ifTrue: [ ^aValue matches: aSearchValue asString ].
	aValue isCollection ifTrue: [ 
		aSearchValue isString ifTrue: [ ^false ].
		aSearchValue isCollection ifTrue:  [ ^aValue includesAnyOf: aSearchValue ].
		^aValue includes: aSearchValue ].
	^aValue asString matches: aSearchValue asString