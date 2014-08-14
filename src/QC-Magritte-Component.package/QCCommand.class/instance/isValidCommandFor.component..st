testing
isValidCommandFor: aRow component: aComponent 
	self conditionBlock ifNil: [ ^true ].
	self conditionBlock isSymbol ifTrue: [ ^aRow perform: self conditionBlock ].
	^self conditionBlock cull: aRow cull: aComponent