tests
testVisitWeighing
	| target |
	target := QCWeighing on: self.
	self deny: (QCQueryMatchVisitor on: target query: self).
	QCQueryRunVisitor on: target query: self.
	self assert: 4 equals: self acceptedObjects size.
	self assert: 20 equals: self visits size.
	self visits keys includes: (QCWeighing template firstWeighingScaleIDDescription)