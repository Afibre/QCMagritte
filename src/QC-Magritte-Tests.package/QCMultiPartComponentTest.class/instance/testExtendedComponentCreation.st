tests
testExtendedComponentCreation
	| component childComponent |
	component := self asComponent addValidatedForm.
	childComponent := component childAt: self descriptionItems.
	self assert: childComponent value equals: self items.
	self assert: (component memento readUsing: self descriptionItems) equals: self items