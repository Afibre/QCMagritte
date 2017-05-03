tests
testSetDescription
	| container description |
	self object: QCTestObject new.
	description := MADescriptionFlattener buildFrom: self magritteDescription target: self model: self.
	container := self asComponent.
	self assert: container magritteDescription equals: description.
	self object: QCTestObject2 new.
	description := MADescriptionFlattener buildFrom: self magritteDescription target: self model: self.
	container setDescription: self magritteDescription.
	self assert: container magritteDescription equals: description