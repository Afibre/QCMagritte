actions
edit: anObject
	self cache at: anObject put: ((anObject mementoClass
			model: anObject
			description: anObject magritteDescription))