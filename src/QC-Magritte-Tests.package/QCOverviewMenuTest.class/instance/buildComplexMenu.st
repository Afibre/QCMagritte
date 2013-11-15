tests
buildComplexMenu
	self setSession.
	"
		1
			2
				3
				4
			5
		6
			7
	"
	pages := OrderedCollection new.
	overviewMenu := QCTreePageChoice new.
	overviewMenu addPage: (pages add: QCComponent new).
	overviewMenu addPage: (pages add: QCComponent new) parent: pages first.
	overviewMenu addPage: (pages add: QCComponent new) parent: pages second.
	overviewMenu addPage: (pages add: QCComponent new) parent: pages second.
	overviewMenu addPage: (pages add: QCComponent new) parent: pages first.
	overviewMenu addPage: (pages add: QCComponent new).
	overviewMenu addPage: (pages add: QCComponent new) parent: (pages at: 6)