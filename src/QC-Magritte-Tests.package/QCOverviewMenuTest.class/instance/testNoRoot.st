tests
testNoRoot
	| subComponent |
	self setSession.
	pages := OrderedCollection new.
	overviewMenu := QCTreePageChoice new.
	overviewMenu addPage: (subComponent := QCSubMenuComponent new
		addPage: (pages add: QCComponent new);
		addPage: (pages add: QCComponent new);
		yourself).
	" we should test this as a tree! "
	self assert: overviewMenu menuSize equals: 3.
	self assert: overviewMenu activePage equals: pages first.
	self assert: (overviewMenu menuChoice: 1) equals: subComponent.
	self assert: (overviewMenu menuChoice: 2) equals: pages first.
	self assert: (overviewMenu menuChoice: 3) equals: pages second.
	pages do: [ :page |
		self deny: (overviewMenu isInTrace: page) ].
	self assert: (overviewMenu isInTrace: subComponent)