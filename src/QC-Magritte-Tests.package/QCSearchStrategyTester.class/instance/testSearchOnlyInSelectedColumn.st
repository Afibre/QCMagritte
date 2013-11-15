tests
testSearchOnlyInSelectedColumn
	self searchForm searchValue: 'fried'.
	self searchForm search.
	self assert: self report visible size equals: 1.
	self assert: (self report visible includes: self party1)