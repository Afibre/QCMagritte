actions
showSimpleForm
	simple := self call: self buildSimpleComponent.
	simple
		ifNil: [ self message: 'Simple object was not saved.' ]
		ifNotNil: [ self message: 'Simple object was saved' ]