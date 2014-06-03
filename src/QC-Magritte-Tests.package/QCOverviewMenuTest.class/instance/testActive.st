tests
testActive
	self buildComplexMenu.
	overviewMenu selectPage: pages second.
	self assert: (overviewMenu findPage: pages second) isRootSelected.
	self assert: ((overviewMenu findPage: pages second) subMenuPage isActivePage: pages third).
	overviewMenu selectPage: pages third.
	self deny: (overviewMenu findPage: pages second) isRootSelected.
	self assert: ((overviewMenu findPage: pages second) subMenuPage isActivePage: pages third).
	overviewMenu selectPage: pages second.
	self assert: (overviewMenu findPage: pages second) isRootSelected.
	self assert: ((overviewMenu findPage: pages second) subMenuPage isActivePage: pages third).
	(overviewMenu findPage: pages second) subMenuPage active: false.
	self deny: ((overviewMenu findPage: pages second) subMenuPage isActivePage: pages third).
