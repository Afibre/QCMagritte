initialization
initialize: aParent
	self initialize.
	parent := aParent.
	parent ifNotNil: [ prevPage := parent currentPage ]