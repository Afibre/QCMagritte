tests
testBasicMenu
	| homepage page1 page2 |
	self setSession.
	overviewMenu := QCTreePageChoice new.
	self assert: overviewMenu children isEmpty.
	overviewMenu addPage: (homepage := QCComponent new).
	overviewMenu addPage: (page1 := QCComponent new) parent: homepage.
	overviewMenu addPage: (page2 := QCComponent new) parent: homepage.
	" we should test this as a tree! "
	self assert: overviewMenu menuSize equals: 3.
	self assert: overviewMenu activePage equals: homepage.
	self assert: (overviewMenu menuChoice: 1) equals: homepage.
	self assert: (overviewMenu menuChoice: 2) equals: page1.
	self assert: (overviewMenu menuChoice: 3) equals: page2.
	self assert: (overviewMenu isInTrace: homepage).
	self deny: (overviewMenu isInTrace: page1).
	self deny: (overviewMenu isInTrace: page2).
