visiting
visitContainer: aDescription
	super visitContainer: aDescription.
	aDescription do: [ :each |
		each canQueryDescription ifTrue: [ self visit: each ] ]