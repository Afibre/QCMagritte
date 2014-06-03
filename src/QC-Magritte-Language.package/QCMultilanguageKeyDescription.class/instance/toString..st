strings
toString: aValue
	aValue isSymbol ifTrue: [ ^'#', aValue asString ].
	aValue isBehavior ifTrue: [ ^'>>', aValue asString ].
	^aValue asString