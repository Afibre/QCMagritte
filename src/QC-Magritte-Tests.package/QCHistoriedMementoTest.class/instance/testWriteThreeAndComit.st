as yet unclassified
testWriteThreeAndComit
	memento write: 4 using: self descriptionThree.
	self memento commit.
	self assert: self three equals: 4.
