testing
hasForm
	self parent ifNil: [ ^super hasForm ].
	^self parent hasForm