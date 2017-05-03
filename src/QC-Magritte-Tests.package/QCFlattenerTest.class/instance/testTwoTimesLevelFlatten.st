as yet unclassified
testTwoTimesLevelFlatten
	|instance desc buildedDesc|
	instance := QCTest2LevelNestedObject new.
	desc := instance magritteDescription.
	buildedDesc := MADescriptionFlattener buildFrom: desc target: instance model: instance.
	buildedDesc := MADescriptionFlattener buildFrom: buildedDesc target: instance model: instance.
	self assert: buildedDesc children size equals: 7.