accessing-model
value: aValue
	aValue isString
		ifTrue: [ super value: (self optionForString: aValue) ]
		ifFalse: [ super value: aValue ]