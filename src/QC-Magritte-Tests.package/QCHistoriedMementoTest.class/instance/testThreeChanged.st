as yet unclassified
testThreeChanged
	memento write: 'three' using: self descriptionThree.
	self assert: (memento changed: self descriptionThree after: self descriptionTwo).
	self deny: (memento changed: self descriptionTwo after: self descriptionThree).
