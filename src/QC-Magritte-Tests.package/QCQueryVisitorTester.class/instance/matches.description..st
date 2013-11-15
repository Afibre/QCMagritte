mock
matches: aValue description: aDescription
	self visits at: aDescription put: aValue.
	^self desiredResult