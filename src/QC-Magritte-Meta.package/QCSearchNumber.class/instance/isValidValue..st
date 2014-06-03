accessing
isValidValue: aValue
	[ aValue asNumber ] on: Exception do: [ ^false ].
	^true