as yet unclassified
testModel
	|model instance desc buildedDesc|
	model := self.
	instance := QCTest2LevelNestedObject new.
	desc := instance magritteDescription.
	buildedDesc := QCDescriptionFlattener buildFrom: desc target: instance model: model.
	self assert: buildedDesc children size equals: 7.