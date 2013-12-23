visiting
visitContainer: aDescription
	super visitContainer: aDescription.
	aDescription do: [ :each |
		each isVisible ifTrue: [ self visit: each ] ]