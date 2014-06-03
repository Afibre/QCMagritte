visiting
visitContainer: aDescription
	super visitContainer: aDescription.
	aDescription do: [ :each | self visit: each ]