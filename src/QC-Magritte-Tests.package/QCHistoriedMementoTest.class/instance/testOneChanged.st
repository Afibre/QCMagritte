as yet unclassified
testOneChanged
	memento write: 'one' using: self descriptionOne.
	self assert: (memento changed: self descriptionOne after: self descriptionTwo).
	self deny: (memento changed: self descriptionTwo after: self descriptionOne).
	self deny: (memento changed: self descriptionOne after: self descriptionOne).