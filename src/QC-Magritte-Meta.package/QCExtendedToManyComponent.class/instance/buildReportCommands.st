initialization
buildReportCommands
	^super buildReportCommands
		add: (QCCommand on: (QCMultilanguageString on: 'Hide options') condition: [ self canHideOptions ] action: [ self hideOptions ]);
		add: (QCCommand on: (QCMultilanguageString on: 'Report options...') condition: [ self canShowOptions ] action: [ self showOptions ]);
		yourself