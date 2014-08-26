*QC-Magritte-Commands
customCommands
	" commands that are shown at the detail view (command decorator) "
	^ self propertyAt: #customCommands ifAbsent: [ self defaultCustomCommands ]