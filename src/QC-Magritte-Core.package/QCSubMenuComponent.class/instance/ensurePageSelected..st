actions
ensurePageSelected: aPage
	rootSelected := (self rootPage = aPage).
	self parent ifNotNil: [ self parent ensurePageSelected: self ]