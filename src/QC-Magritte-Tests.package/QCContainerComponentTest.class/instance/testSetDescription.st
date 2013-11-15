tests
testSetDescription
	| container description |
	self object: QCTestObject new.
	description := QCDescriptionFlattener buildFrom: self magritteDescription target: self.
	container := self asComponent.
	self assert: container magritteDescription equals: description.
	self object: QCTestObject2 new.
	description := QCDescriptionFlattener buildFrom: self magritteDescription target: self.
	container setDescription: self magritteDescription.
	self assert: container magritteDescription equals: description