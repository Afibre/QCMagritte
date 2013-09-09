actions
showComposedForm
	composed := self call: self buildComposedComponent.
	composed
		ifNil: [ self message: 'Composed object was not saved.' ]
		ifNotNil: [ self message: 'Composed object was saved' ]