accessing-magritte
roleClasses
	self userOverview ifNil: [ 
		^self defaultRoleClasses ].
	^self userOverview allRoleClasses