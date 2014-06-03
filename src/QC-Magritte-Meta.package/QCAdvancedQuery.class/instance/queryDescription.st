accessing
queryDescription
	^self operator toStringWithField: self searchField valueString: (self searchValueType format: self searchValue)