instance creation
buttons: aCollection commands: aCommandCollection 
	^self new
		addButtons: aCollection;
		addCommands: aCommandCollection;
		yourself