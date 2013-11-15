tests
buildBasicMenu
	"
		1
			2
			3
		4
			5
	"
	self setSession.
	pages := OrderedCollection new.
	overviewMenu := QCTreePageChoice new.
	overviewMenu addPage: (pages add: QCComponent new).
	overviewMenu addPage: (pages add: QCComponent new) parent: pages first.
	overviewMenu addPage: (pages add: QCComponent new) parent: pages first.
	overviewMenu addPage: (pages add: QCComponent new).
	overviewMenu addPage: (pages add: QCComponent new) parent: pages fourth.
