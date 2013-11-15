tests
testClose
	| pageChoice page1 page2 |
	self setSession.
	pageChoice := QCPageChoice new.
	pageChoice addPage: (page1 := QCComponent new) announcement: QCTestAnnouncement1.
	pageChoice addPage: (page2 := QCComponent new) announcement: QCTestAnnouncement2.
	self assert: pageChoice children size equals: 2.
	pageChoice close: page1.
	self assert: pageChoice children size equals: 1.
	self assert: pageChoice currentPage equals: page2