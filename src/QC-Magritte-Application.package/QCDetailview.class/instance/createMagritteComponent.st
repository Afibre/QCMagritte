initialization
createMagritteComponent
	| retVal |
	self target ifNil: [ ^nil ].
	retVal := (self user ifNotNil: [:user | 
		user componentFor: self target from: self parent] 
	ifNil: [parent ifNotNil: [:p | p componentFor: target]
		ifNil: [target asComponent]]).
	retVal
		readonly: (self canEdit: self target) not;
		onAnswer: [ :v | self handleAnswer: v ];
		yourself.
	self addValidationTo: retVal.
	^retVal