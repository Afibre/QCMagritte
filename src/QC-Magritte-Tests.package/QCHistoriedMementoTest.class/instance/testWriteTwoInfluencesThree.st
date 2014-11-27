as yet unclassified
testWriteTwoInfluencesThree
	memento write: 4 using: self descriptionTwo.
	self memento commit.
	self assert: self three equals: 4.
