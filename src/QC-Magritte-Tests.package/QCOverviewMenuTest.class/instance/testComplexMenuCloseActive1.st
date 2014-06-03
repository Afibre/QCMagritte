tests
testComplexMenuCloseActive1
	self buildComplexMenu.
	self assert: overviewMenu allPages size equals: pages size.
	overviewMenu selectPage: pages last.
	overviewMenu close: pages last.
	self assert: overviewMenu activePage equals: (pages at: 6)