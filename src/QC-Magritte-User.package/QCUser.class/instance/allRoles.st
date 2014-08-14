accessing-magritte
allRoles
	self userOverview ifNil: [ ^#() ].
	^self userOverview allRoles