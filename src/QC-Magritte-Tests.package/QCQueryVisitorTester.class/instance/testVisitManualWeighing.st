tests
testVisitManualWeighing
	| target |
	target := QCManualWeighing on: self.
	QCQueryRunVisitor on: target query: self.
	self assert: 0 equals: self acceptedObjects size.
	self assert: 0 equals: self visits size.
	self visits keys includes: (QCManualWeighing template dateDescription)