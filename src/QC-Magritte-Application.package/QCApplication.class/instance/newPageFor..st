actions
newPageFor: anObject
	| page |
	page := self createPageFor: anObject.
	self addPage: page parent: self activePage.
	self selectPage: page