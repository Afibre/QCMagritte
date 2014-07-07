accessing-magritte
roleClasses
	self parent ifNil: [ 
		^self defaultRoleClasses ].
	^self parent allRoleClasses