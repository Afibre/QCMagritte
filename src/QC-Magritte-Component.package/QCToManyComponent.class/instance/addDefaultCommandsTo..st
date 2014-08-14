private
addDefaultCommandsTo: aCommandColumn
	aCommandColumn
		addCommand: self detailsCommand;
		addCommand: self editCommand;
		addCommand: self saveCommand;
		addCommand: self cancelCommand.
	self magritteDescription isDefinitive ifFalse: [
		aCommandColumn addCommand: self removeCommand ]