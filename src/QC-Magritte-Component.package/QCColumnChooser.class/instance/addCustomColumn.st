actions
addCustomColumn
	(self call: self newCalculatedDescription asComponent addValidatedForm)
	 	ifNotNilDo: [ :newDescription | self addDescription: newDescription ].
	