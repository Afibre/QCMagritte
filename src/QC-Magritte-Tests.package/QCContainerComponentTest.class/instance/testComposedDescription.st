tests
testComposedDescription
	| target component |
	target := QCTestBuilderObject new.
	component := target asComponent.
	self assert: component magritteDescription size equals: 4.
	self assert: (component magritteDescription at: 1) comment equals: 'testtestboolean'.
	self assert: (component magritteDescription at: 2) comment equals: 'testtestnumber'.
	self assert: (component magritteDescription at: 3) comment equals: 'testteststring'.
