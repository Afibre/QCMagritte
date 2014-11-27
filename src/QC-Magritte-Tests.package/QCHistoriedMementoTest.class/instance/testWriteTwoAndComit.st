as yet unclassified
testWriteTwoAndComit
	memento write: 4 using: self descriptionTwo.
	self memento commit.
	self assert: self two equals: 4.
