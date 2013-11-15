tests
testSettingHomepage
	| pageChoice page1 page2 homePage |
	self setSession.
	pageChoice := QCPageChoice new.
	pageChoice addPage: (page1 := QCComponent new) announcement: QCTestAnnouncement1.
	pageChoice homePage: (homePage := QCComponent new).
	pageChoice addPage: (page2 := QCComponent new) announcement: QCTestAnnouncement2.
	self assert: pageChoice currentPage equals: homePage.
	self assert: pageChoice children size equals: 3.
	self assert: (pageChoice children includes: page1).
	self assert: (pageChoice children includes: page2).
	self assert: (pageChoice children includes: homePage).
