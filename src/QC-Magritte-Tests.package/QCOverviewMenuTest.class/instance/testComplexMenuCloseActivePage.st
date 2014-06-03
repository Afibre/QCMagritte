tests
testComplexMenuCloseActivePage
	self buildComplexMenu.
	overviewMenu selectPage: pages third.
	self assert: overviewMenu activePage equals: pages third.
	overviewMenu close: pages third.
	self assert: overviewMenu allPages size equals: pages size -1.
	self assert: overviewMenu activePage equals: pages fourth