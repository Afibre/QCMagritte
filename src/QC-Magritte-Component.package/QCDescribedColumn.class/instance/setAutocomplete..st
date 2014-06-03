actions
setAutocomplete: aValue
	| filterChanged |
	filterChanged := true.
	(aValue isNil or: [ aValue isEmpty ])
		ifTrue: [ self properties removeKey: #filterValue ifAbsent: [ filterChanged := false ] ]
		ifFalse: [ 
			filterChanged := (self propertyAt: #filterValue ifAbsent: [ nil ]) ~= aValue.
			self propertyAt: #filterValue put: aValue ].
	^filterChanged