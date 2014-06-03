pages
addPage: page announcement: announcement
	self addPage: page.
	self announcer subscribe: announcement do: [ :ann | self currentPage: page ] for: self