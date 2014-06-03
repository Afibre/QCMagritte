tests
testComplexMenuClose
	self buildComplexMenu.
	" we should test this as a tree! "
	self assert: overviewMenu allPages size equals: pages size.
	overviewMenu close: pages third.
	self assert: overviewMenu allPages size equals: pages size -1