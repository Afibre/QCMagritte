visiting
visitContainer: aContainer
	buildedDescription := aContainer copy.
	buildedDescription removeAll.
	aContainer do: [ :each |
		self visit: each copy ]