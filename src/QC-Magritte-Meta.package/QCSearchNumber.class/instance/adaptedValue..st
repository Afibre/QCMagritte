accessing
adaptedValue: aValue
	[ ^aValue asNumber ] on: Exception do: [ ^aValue ]