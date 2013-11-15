tests
testAddPages
	| pageChoice page1 page2  |
	pageChoice := QCPageChoice new.
	pageChoice addPage: (page1 := QCComponent new).
	pageChoice addPage: (page2 := QCComponent new).
	self assert: pageChoice children size equals: 2.
	self assert: (pageChoice children includes: page1).
	self assert: (pageChoice children includes: page2).
	self assert: pageChoice currentPage equals: page1.
	self assert: pageChoice homePage equals: page1