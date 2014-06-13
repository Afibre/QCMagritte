initialization
createMagritteComponent
	| retVal |
	self target ifNil: [ ^nil ].
	retVal := self target asComponent
		readonly: (self canEdit: self target) not;
		onAnswer: [ :v | self handleAnswer: v ];
		yourself.
	self addValidationTo: retVal.
	^retVal