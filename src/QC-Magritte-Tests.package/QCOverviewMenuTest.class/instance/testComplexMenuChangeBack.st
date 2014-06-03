tests
testComplexMenuChangeBack
	self buildComplexMenu.
	overviewMenu selectPage: pages second.
	self assert: overviewMenu activePage equals: pages second.
	self assert: (overviewMenu isInTrace: pages first).
	overviewMenu selectPage: pages first.
	self assert: overviewMenu activePage equals: pages first