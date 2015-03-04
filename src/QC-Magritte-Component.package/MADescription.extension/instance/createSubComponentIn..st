*qc-magritte-component
createSubComponentIn: aComponent
	" creates a memento to support tabs "
	self showTabAsContainer
		ifTrue: [ ^(self reference asComponentOn: (aComponent memento readUsing: self)) 
			addValidatedForm ].
	^(self componentClass memento: aComponent memento description: self parent: aComponent)