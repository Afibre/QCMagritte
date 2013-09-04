testing
matches: aValue searchValue: aSearchValue fieldParameter: aFieldParameter
	aFieldParameter ifEmpty: [ ^self matches: aValue searchValue: aSearchValue ].
	aValue isCollection ifTrue: [
		aValue do: [ :each |
			(self matches: each searchValue: aSearchValue fieldParameter: aFieldParameter)
				ifTrue: [ ^true ] ].
		^false ].
	^self matches: (aValue valueForField: aFieldParameter first) searchValue: aSearchValue fieldParameter: aFieldParameter allButFirst