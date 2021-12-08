accessing
addPage: aComponent parent: aParent
	(self pages includes: aParent)
		ifTrue: [ 
			| newPage index |
			index := (self pages indexOf: aParent).
			newPage := (self createNewPageFor: aParent).
			self pages at: index put: newPage.
			(aParent = currentPage) ifTrue: [ currentPage := newPage ].
			(aParent = homePage) ifTrue: [ homePage := newPage ].
			newPage onCloseLastPage: [ self replacePageAt: index with: aParent ].
			^newPage addPage: aComponent parent: parent ].
	(self findPage: aParent) ifNotNil: [ :page | ^page addPage: aComponent parent: aParent ].
	self addPage: aComponent