*qc-magritte-unit
fixAfterLoad
	self unit isBaseUnit
		ifTrue: [ unit := Unit named: self unit name ]
		ifFalse: [ self unit fixAfterLoad ]