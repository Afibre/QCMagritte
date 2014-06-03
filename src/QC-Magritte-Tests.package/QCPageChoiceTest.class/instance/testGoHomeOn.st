tests
testGoHomeOn
	| pageChoice page1  |
	self setSession.
	pageChoice := QCPageChoice new.
	pageChoice addPage: (page1 := QCComponent new) announcement: QCTestAnnouncement1.
	pageChoice addPage: (QCComponent new) announcement: QCTestAnnouncement2.
	pageChoice goHomeOn: QCTestAnnouncement.
	self session announce: QCTestAnnouncement2.
	self session announce: QCTestAnnouncement.
	self assert: pageChoice currentPage equals: page1