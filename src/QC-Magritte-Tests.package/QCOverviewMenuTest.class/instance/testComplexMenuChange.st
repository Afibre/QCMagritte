tests
testComplexMenuChange
	self buildComplexMenu.
	" we should test this as a tree! "
	overviewMenu selectPage: pages second.
	self assert: overviewMenu activePage equals: pages second.
	self assert: overviewMenu menuSize equals: 6.
	self assert: (overviewMenu isInTrace: pages first).
	self assert: (overviewMenu isInTrace: pages second).
	overviewMenu selectPage: pages last.
	self assert: overviewMenu activePage equals: pages last.
	self assert: overviewMenu menuSize equals: 3.
	self deny: (overviewMenu isInTrace: (pages first)).
	self deny: (overviewMenu isInTrace: pages second).
	self assert: (overviewMenu isInTrace: (pages at: 6)).
	overviewMenu selectPage: pages third.
	self assert: overviewMenu activePage equals: pages third.
	self assert: overviewMenu menuSize equals: 6.
	self assert: (overviewMenu isInTrace: pages first).
	self assert: (overviewMenu isInTrace: pages second).
