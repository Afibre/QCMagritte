testing
isValidCommandFor: aRow
	self conditionBlock ifNil: [ ^true ].
	self conditionBlock isSymbol ifTrue: [ 
		(aRow respondsTo: self conditionBlock) ifFalse: [ ^false ].
		^aRow perform: self conditionBlock ].
	^self conditionBlock cull: aRow