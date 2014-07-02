tests
testFlattener
	| container description |
	description := QCDescriptionFlattener buildFrom: self magritteDescription target: self model: self.
	" we set the builder manually, to allow for different tests "
	container := self asComponent.
	self assert: container magritteDescription equals: description