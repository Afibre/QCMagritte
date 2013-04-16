pages
addPage: page
	self pages 
		detect: [ :each | each = page ]
		ifNone: [ self pages add: page ].
	currentPage ifNil: [ currentPage := page ].
	^page