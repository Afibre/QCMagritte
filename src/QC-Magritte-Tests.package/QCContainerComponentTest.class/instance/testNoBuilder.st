tests
testNoBuilder
	| container |
	container := self magritteDescription
		descriptionBuilder: nil;
		asComponentOn: self.
	self assert: container magritteDescription equals: self magritteDescription