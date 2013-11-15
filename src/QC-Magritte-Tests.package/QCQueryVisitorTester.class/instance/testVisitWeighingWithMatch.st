tests
testVisitWeighingWithMatch
	| target |
	target := QCWeighing on: self.
	self deny: (QCQueryMatchVisitor on: target query: self).
	self assert: 0 equals: self acceptedObjects size.
	self assert: 20 equals: self visits size.
	self visits keys includes: (QCWeighing template firstWeighingScaleIDDescription)