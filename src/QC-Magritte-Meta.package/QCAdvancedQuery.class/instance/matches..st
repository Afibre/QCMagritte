running
matches: aValue
	^self operator matches: aValue searchValue: (self searchValueType adaptedValue: self searchValue)