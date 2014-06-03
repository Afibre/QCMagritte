tests
testChangeInExtendedComponentTab
	| component childComponent |
	component := self asComponent addValidatedForm.
	childComponent := component childAt: self descriptionItems.
	self assert: childComponent report rows size equals: 0.
	" add an item: "
	childComponent add: 'an item'.
	" test add is committed "
	self assert: self items size equals: 1.
	" test add is propagated to component memento "
	self assert: (component memento readUsing: self descriptionItems) equals: self items.
	self assert: childComponent report rows size equals: 1