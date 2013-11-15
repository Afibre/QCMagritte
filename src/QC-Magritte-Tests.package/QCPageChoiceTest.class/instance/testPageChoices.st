tests
testPageChoices
	| pageChoice page1 page2  |
	self setSession.
	pageChoice := QCPageChoice new.
	pageChoice addPage: (page1 := QCComponent new) announcement: QCTestAnnouncement1.
	pageChoice addPage: (page2 := QCComponent new) announcement: QCTestAnnouncement2.
	self session announce: QCTestAnnouncement2.
	self assert: pageChoice currentPage equals: page2.
	self session announce: QCTestAnnouncement2.
	self assert: pageChoice currentPage equals: page2.
	self session announce: QCTestAnnouncement1.
	self assert: pageChoice currentPage equals: page1
