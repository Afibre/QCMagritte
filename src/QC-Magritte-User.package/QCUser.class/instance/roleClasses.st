accessing-magritte
roleClasses
	self parent ifNil: [ ^#() ].
	^self parent allRoleClasses