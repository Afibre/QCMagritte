pages
closeAll
	homePage := nil.
	currentPage := nil.
	pages := nil.
	self onCloseLastPage ifNotNil: [ self onCloseLastPage value ]