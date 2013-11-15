tests
testAddPage
	| pageChoice page |
	pageChoice := QCPageChoice new.
	pageChoice addPage: (page := QCComponent new).
	self assert: pageChoice children size equals: 1.
	self assert: (pageChoice children includes: page).
	self assert: pageChoice currentPage equals: page.
	self assert: pageChoice homePage equals: page