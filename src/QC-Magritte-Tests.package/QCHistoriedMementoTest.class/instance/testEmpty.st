as yet unclassified
testEmpty
	self deny: (memento changed: self descriptionOne after: self descriptionTwo).
	self deny: (memento changed: self descriptionTwo after: self descriptionOne).
	self deny: (memento changed: self descriptionOne after: self descriptionOne).