*QC-Magritte-Other
addCustomCommand: aCommand
	" commands that are shown at the detail view (command decorator) "
	self customCommands: (self customCommands copyWith: aCommand)