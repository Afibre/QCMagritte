tests
testSimpleFinds
	self assert: (QCParty template magritteDescription find: 'fried' in: QCParty testParty1).
	self deny: (QCParty template magritteDescription find: 'fried' in: QCParty testParty2).
	self deny: (QCParty template magritteDescription find: 'sesamstreet' in: QCParty testParty1).
	self assert: (QCParty template magritteDescription find: 'sesamstreet' in: QCParty testParty2).
