accessing-magritte
allRoles
	self parent ifNil: [ ^#() ].
	^self parent allRoles