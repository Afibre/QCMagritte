tests
testVisitModelWithParty
	| target party1 |
	target := QCModel new.
	party1 := QCParty testParty1For: target.
	target addParty: party1.
	(QCQueryRunVisitor on: target query: self).
	self deny: (QCQueryMatchVisitor on: target query: self).
	self assert: 5 equals: self acceptedObjects size.
	self assert: 8 equals: self visits size.