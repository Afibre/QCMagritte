tests
testBasicMenuChange
	self buildBasicMenu.
	" we should test this as a tree! "
	self assert: overviewMenu menuSize equals: 4.
	overviewMenu selectPage: (pages fourth).
	self assert: overviewMenu activePage equals: pages fourth.
	self assert: overviewMenu menuSize equals: 3.
	self assert: (overviewMenu menuChoice: 1) equals: (pages at: 1).
	self assert: (overviewMenu menuChoice: 2) equals: (pages at: 4).
	self assert: (overviewMenu menuChoice: 3) equals: (pages at: 5).
	pages do: [ :page |
		(overviewMenu activePage = page)
			ifTrue: [ self assert: (overviewMenu isInTrace: page) ]
			ifFalse: [ self deny: (overviewMenu isInTrace: page) ] ].
	overviewMenu selectPage: (pages second).
	self assert: overviewMenu activePage equals: pages second.
	self assert: overviewMenu menuSize equals: 4.
	self assert: (overviewMenu isInTrace: (pages at: 1)).
	pages allButFirstDo: [ :page |
		self deny: (overviewMenu isInTrace: page) ].
