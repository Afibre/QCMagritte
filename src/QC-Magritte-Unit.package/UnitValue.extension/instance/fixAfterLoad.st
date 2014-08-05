*qc-magritte-unit
fixAfterLoad
	self unit isBaseUnit
		ifTrue: [ unit := Unit withSingularName: self unit name ]
		ifFalse: [ self unit fixAfterLoad ]