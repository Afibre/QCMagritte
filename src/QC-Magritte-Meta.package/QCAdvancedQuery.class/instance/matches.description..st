running
matches: aValue description: aDescription
	(self testField: aDescription) ifFalse: [ ^false ].
	(self hasCompoundField) ifTrue: [ 
		^self operator matches: aValue searchValue: self searchValue fieldParameter: self fieldParameter  ].
	^self matches: aValue