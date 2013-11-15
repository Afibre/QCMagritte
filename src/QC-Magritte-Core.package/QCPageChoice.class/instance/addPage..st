pages
addPage: page
	page = self ifTrue: [ QCStateError signal: 'Cannot add itself to pagechoice' ].
	self pages 
		detect: [ :each | each = page ]
		ifNone: [ self pages add: page ].
	currentPage ifNil: [ currentPage := page ].
	^page