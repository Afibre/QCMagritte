initialization
oldQuery: aQuery
	super oldQuery: aQuery.
	aQuery isSimple ifTrue: [ searchValue := aQuery searchString ]