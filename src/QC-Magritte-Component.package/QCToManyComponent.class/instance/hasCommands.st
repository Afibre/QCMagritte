testing
hasCommands
	self parent ifNil: [ ^true ].
	^self parent hasCommands