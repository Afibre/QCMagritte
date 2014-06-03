accessing
matches: aValue searchValue: aSearchValue
	aValue isString ifTrue: [ ^aValue = aSearchValue asString ].
	^aValue = aSearchValue