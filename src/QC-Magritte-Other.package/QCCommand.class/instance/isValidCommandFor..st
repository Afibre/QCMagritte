testing
isValidCommandFor: aRow
	self conditionBlock ifNil: [ ^true ].
	^self conditionBlock cull: aRow