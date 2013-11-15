tests
testVisitModel
	| target |
	target := QCModel new.
	(QCQueryRunVisitor on: target query: self).
	self deny: (QCQueryMatchVisitor on: target query: self).
	self assert: 4 equals: self acceptedObjects size.
	self assert: 10 equals: self visits size.