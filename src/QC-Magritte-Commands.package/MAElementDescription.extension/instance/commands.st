*QC-Magritte-Commands
commands
	^self propertyAt: #commands ifAbsent: [ self defaultCommands ]