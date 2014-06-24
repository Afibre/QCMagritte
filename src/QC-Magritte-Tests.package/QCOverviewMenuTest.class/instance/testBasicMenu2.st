tests
testBasicMenu2
	self buildBasicMenu.
	" we should test this as a tree! "
	self assert: (overviewMenu menuSize: true) equals: 4.
	self assert: overviewMenu activePage equals: pages first.
	self assert: (overviewMenu menuChoice: 1) rootPage equals: pages first.
	self assert: (overviewMenu menuChoice: 2 displayChildren: true) equals: pages second.
	self assert: (overviewMenu menuChoice: 3 displayChildren: true) equals: pages third.
	self assert: (overviewMenu menuChoice: 4 displayChildren: true) equals: pages fourth.
	pages allButFirstDo: [ :page |
		self deny: (overviewMenu isInTrace: page) ]