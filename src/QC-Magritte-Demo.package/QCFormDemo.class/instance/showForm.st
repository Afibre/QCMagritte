actions
showForm
	model := self call: self buildModelComponent.
	model
		ifNil: [ self message: 'Model was not saved.' ]
		ifNotNil: [ self message: 'Model was saved' ]