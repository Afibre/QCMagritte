accessing
updateUnitOptions
	self magritteDescription updateOptionsWith: self memento.
	" make sure we have a valid unit: "
	(self unitOptions includes: self unit)
		ifFalse: [ 
			self unitOptions
				ifEmpty: [ self unit: nil ]
				ifNotEmpty: [ self unit: self unitOptions first ] ]
