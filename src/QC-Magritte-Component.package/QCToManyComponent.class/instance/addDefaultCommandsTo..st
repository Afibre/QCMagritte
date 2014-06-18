private
addDefaultCommandsTo: aCommandColumn
	aCommandColumn addCommand: self detailsCommand.
	aCommandColumn addCommand: self editCommand.
	aCommandColumn addCommand: self saveCommand.
	aCommandColumn addCommand: self cancelCommand.
	self magritteDescription isDefinitive ifFalse: [
		aCommandColumn addCommand: self removeCommand ]