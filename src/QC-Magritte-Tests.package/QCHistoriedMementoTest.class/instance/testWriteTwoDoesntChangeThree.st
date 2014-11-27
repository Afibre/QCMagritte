as yet unclassified
testWriteTwoDoesntChangeThree
	memento write: 2 using: self descriptionTwo.
	self assert: (memento changed: self descriptionTwo after: self descriptionThree).
	self deny: (memento changed: self descriptionThree after: self descriptionOne).
