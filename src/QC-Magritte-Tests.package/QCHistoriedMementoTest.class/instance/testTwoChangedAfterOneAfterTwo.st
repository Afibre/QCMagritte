as yet unclassified
testTwoChangedAfterOneAfterTwo
	memento write: 3 using: self descriptionTwo.
	memento write: 'One' using: self descriptionOne.
	memento write: 1 using: self descriptionTwo.
	self deny: (memento changed: self descriptionOne after: self descriptionTwo).
	self assert: (memento changed: self descriptionTwo after: self descriptionOne).
