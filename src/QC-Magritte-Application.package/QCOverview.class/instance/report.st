accessing
report
	self toManyComponent ifNil: [ ^nil ].
	^self toManyComponent report