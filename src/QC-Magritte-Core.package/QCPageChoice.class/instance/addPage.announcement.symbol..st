pages
addPage: page announcement: announcement symbol: aSymbol
	self addPage: page.
	self announcer
		on: announcement
		do: [ :ann |
			(ann perform: aSymbol) ifNotNil: [ page subject: (ann perform: aSymbol) ].
			self currentPage: page]
