*qc-magritte-component
createSubComponentIn: aComponent
	" creates a memento to support tabs "
	self showTabAsContainer
		ifTrue: [ ^(aComponent memento readUsing: self) asComponent addValidatedForm ].
	^(self componentClass memento: aComponent memento description: self parent: aComponent)