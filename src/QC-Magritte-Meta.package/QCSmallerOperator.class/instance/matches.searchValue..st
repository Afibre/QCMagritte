accessing
matches: aValue searchValue: aSearchValue
	[ ^aValue < aSearchValue ] on: Exception do: [ ^false ]