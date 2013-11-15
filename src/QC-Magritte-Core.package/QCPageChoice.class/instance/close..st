pages
close: aPage
	aPage = currentPage ifTrue: [ currentPage := nil ].
	aPage = homePage ifTrue: [ homePage := nil ].
	self pages remove: aPage ifAbsent: [ ].
	self pages ifEmpty: [ self onCloseLastPage value ]