tests
testComplexMenu
	self buildComplexMenu.
	" we should test this as a tree! "
	self assert: overviewMenu menuSize equals: 4.
	self assert: overviewMenu activePage equals: pages first.
	self assert: (overviewMenu menuChoice: 1) equals: pages first.
	self assert: (overviewMenu menuChoice: 2) equals: pages second.
	self assert: (overviewMenu menuChoice: 3) equals: (pages at: 5).
	self assert: (overviewMenu menuChoice: 4) equals: (pages at: 6)