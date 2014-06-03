tests
testCloseLastpageWithOnClose
	| pageChoice page1 |
	self setSession.
	pageChoice := QCPageChoice new.
	pageChoice addPage: (page1 := QCComponent new).
	pageChoice onCloseLastPage: [ page1 := nil ].
	self assert: pageChoice children size equals: 1.
	self deny: page1 isNil.
	pageChoice close: page1.
	self assert: pageChoice children isEmpty.
	self assert: page1 isNil