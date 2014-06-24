tests
testComplexMenu
	self buildComplexMenu.
	" we should test this as a tree! "
	self assert: (overviewMenu menuSize: true) equals: 4.
	self assert: overviewMenu activePage equals: pages first.
	self assert: (overviewMenu menuChoice: 1 displayChildren: true) equals: pages first.
	self assert: (overviewMenu menuChoice: 2 displayChildren: true) rootPage equals: pages second.
	self assert: (overviewMenu menuChoice: 3 displayChildren: true) equals: (pages at: 5).
	self assert: (overviewMenu menuChoice: 4 displayChildren: true) equals: (pages at: 6)