tests
testCloseLastpage
	| pageChoice page1 |
	self setSession.
	pageChoice := QCPageChoice new.
	pageChoice addPage: (page1 := QCComponent new).
	self assert: pageChoice children size equals: 1.
	pageChoice close: page1.
	self assert: pageChoice children isEmpty.
	self assert: pageChoice currentPage isNil