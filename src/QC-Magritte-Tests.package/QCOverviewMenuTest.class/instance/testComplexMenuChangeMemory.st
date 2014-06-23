tests
testComplexMenuChangeMemory
	self buildComplexMenu.
	" we should test this as a tree! "
	overviewMenu selectPage: pages second.
	self assert: overviewMenu activePage equals: pages second.
	self assert: (overviewMenu menuSize: true) equals: 6.
	self assert: (overviewMenu isInTrace: pages first).
	self assert: (overviewMenu isInTrace: pages second).
	overviewMenu selectPage: pages last.
	self assert: overviewMenu activePage equals: pages last.
	self assert: (overviewMenu menuSize: true) equals: 3.
	overviewMenu selectPage: pages first.
	self assert: (overviewMenu menuSize: true) equals: 6.
	self assert: overviewMenu activePage equals: pages second.
	self assert: (overviewMenu isInTrace: pages first).
	self assert: (overviewMenu isInTrace: pages second).
