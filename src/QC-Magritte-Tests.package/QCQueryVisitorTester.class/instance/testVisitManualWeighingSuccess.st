tests
testVisitManualWeighingSuccess
	| target |
	target := QCManualWeighing on: self.
	desiredResult := true.
	self assert: (QCQueryMatchVisitor on: target description: target magritteDescription query: self)