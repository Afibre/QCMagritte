actions
addCustomColumn
	(self call: self newCalculatedDescription asComponent addValidatedForm)
	 	ifNotNil: [ :newDescription | self addDescription: newDescription ].
	