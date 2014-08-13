testing
isValidCommandFor: aRow component: aComponent 
	self conditionBlock ifNil: [ ^true ].
	^self conditionBlock cull: aRow cull: aComponent