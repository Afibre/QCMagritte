tests
testComplexMenuCloseParentPage
	self buildComplexMenu.
	self assert: overviewMenu allPages size equals: pages size.
	overviewMenu close: pages second.
	self assert: overviewMenu allPages size equals: pages size -3