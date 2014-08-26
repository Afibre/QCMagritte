rendering
renderCommands: aDescription
	| commands |
	commands := (self childAt: aDescription) commands.
	commands ifNotEmpty: [ 
		commands do: [ :aCommand |
			self renderCommand: aCommand description: aDescription] separatedBy: [self renderCommandSpace]].
