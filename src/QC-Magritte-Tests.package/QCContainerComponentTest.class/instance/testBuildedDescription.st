tests
testBuildedDescription
	| target component |
	target := QCTestObject new.
	component := target asComponent.
	self assert: component magritteDescription size equals: 4.
	self assert: (component magritteDescription at: 1) comment equals: 'testboolean'.
	self assert: (component magritteDescription at: 2) comment equals: 'testnumber'.
	self assert: (component magritteDescription at: 3) comment equals: 'teststring'.
