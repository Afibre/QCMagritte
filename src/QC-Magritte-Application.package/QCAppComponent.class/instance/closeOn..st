actions
closeOn: anAnswer
	self parent
		ifNil: [ self target: nil ]
		ifNotNil: [ self parent close: self ]