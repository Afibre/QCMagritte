pages
close: aPage
	self pages remove: aPage ifAbsent: [ ].
	currentPage = aPage ifTrue: [ currentPage := aPage prevPage ]