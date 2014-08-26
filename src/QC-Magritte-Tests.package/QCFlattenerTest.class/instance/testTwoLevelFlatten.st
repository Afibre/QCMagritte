as yet unclassified
testTwoLevelFlatten
	|instance desc buildedDesc|
	instance := QCTest2LevelNestedObject new.
	desc := instance magritteDescription.
	buildedDesc := QCDescriptionFlattener buildFrom: desc target: instance model: instance.
	self assert: buildedDesc children size equals: 7.