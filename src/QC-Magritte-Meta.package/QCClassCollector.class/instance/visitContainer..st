visiting
visitContainer: aDescription
	super visitContainer: aDescription.
	aDescription do: [ :each |
		(each isVisible and: [ each canQueryDescription ]) ifTrue: [ self visit: each ] ]