tests
testVisitModelWithParty
	| target party1 |
	target := QCModel new.
	party1 := QCParty testParty1For: target.
	target addParty: party1.
	(QCQueryRunVisitor on: target query: self).
	self deny: (QCQueryMatchVisitor on: target query: self).
	self assert: 4 equals: self acceptedObjects size.
	self assert: 10 equals: self visits size.