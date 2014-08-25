rendering
renderCommands: aDescription
	| commands |
	commands := (self childAt: aDescription) commands.
	commands ifNotEmpty: [ 
		self halt ].
