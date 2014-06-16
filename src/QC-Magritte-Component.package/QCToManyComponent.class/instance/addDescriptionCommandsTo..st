private
addDescriptionCommandsTo: aCommandColumn
	(self magritteDescription customCommands)
		do: [ :customCommand |
			aCommandColumn addCommand: customCommand text: customCommand label ]