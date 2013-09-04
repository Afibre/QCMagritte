private
buildCommands
	commands := (QCCommandColumn on: self) setReport: self report.
	self addDefaultCommandsTo: commands.
	^ commands