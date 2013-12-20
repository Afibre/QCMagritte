tests
testBasicMenu2
	self buildBasicMenu.
	" we should test this as a tree! "
	self assert: overviewMenu menuSize equals: 4.
	self assert: overviewMenu activePage equals: pages first.
	self assert: (overviewMenu menuChoice: 1) equals: pages first.
	self assert: (overviewMenu menuChoice: 2) equals: pages second.
	self assert: (overviewMenu menuChoice: 3) equals: pages third.
	self assert: (overviewMenu menuChoice: 4) equals: pages fourth.
	pages withIndexDo: [ :page :index |
		(index > 1) ifTrue: [ self deny: (overviewMenu isInTrace: page) ] ]