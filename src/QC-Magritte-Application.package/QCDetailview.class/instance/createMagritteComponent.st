initialization
createMagritteComponent
	| retVal |
	self target ifNil: [ ^nil ].
	retVal := (self user ifNotNil: [:user | 
		user componentFor: self target from: self parent] 
	ifNil: [parent ifNotNil: [:p | 
			(p respondsTo: #componentFor:) ifTrue: [
				"the parent wants to override the default descriptions shown"
				p perform: #componentFor: with: target]
			ifFalse: [ target asComponent ]]
		ifNil: [target asComponent]]).
	retVal
		readonly: (self canEdit: self target) not;
		onAnswer: [ :v | self handleAnswer: v ];
		yourself.
	self addValidationTo: retVal.
	^retVal