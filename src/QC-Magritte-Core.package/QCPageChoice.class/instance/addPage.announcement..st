pages
addPage: page announcement: announcement
	self addPage: page.
	self announcer when: announcement do: [ :ann | self currentPage: page ] for: self