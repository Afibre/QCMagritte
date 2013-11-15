initialization
buildReportCommands
	^OrderedCollection new
		add: (QCCommand on: (QCMultilanguageString on: 'Hide options') condition: [ self isOptionsVisible ] action: [ self hideOptions ]);
		add: (QCCommand on: (QCMultilanguageString on: 'Report options...') condition: [ self isOptionsVisible not ] action: [ self showOptions ]);
		yourself