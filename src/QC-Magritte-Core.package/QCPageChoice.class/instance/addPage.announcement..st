pages
addPage: page announcement: announcement
	self addPage: page.
	self announcer
		on: announcement
		do: [ :ann | 
			self currentPage: page.
		]
