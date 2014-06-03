*QC-Magritte-Other
addCustomCommand: aString condition: aCondition action: anAction
	" commands that are shown at the detail view (command decorator) "
	self addCustomCommand: (QCCommand on: aString condition: aCondition action: anAction)