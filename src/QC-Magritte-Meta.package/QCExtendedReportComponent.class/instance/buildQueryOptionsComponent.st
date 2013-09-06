initialization
buildQueryOptionsComponent
	| retVal |
	retVal := QCAccordionComponent new.
	retVal addPage: (QCSearchForm onParent: self) label: (QCSearchLabel onParent: self).
	self toManyComponent ifNotNilDo: [ :comp |
		retVal addPage: (self columnChooserFor: comp) label: (QCMultilanguageString on: 'Choose columns').
		comp
			clearReportCommands;
			addReportCommand: (QCCommand on: (QCMultilanguageString on: 'Hide options') condition: [ self isOptionsVisible ] action: [ self hideOptions ]);
			addReportCommand: (QCCommand on: (QCMultilanguageString on: 'Report options...') condition: [ self isOptionsVisible not ] action: [ self showOptions ]).
		retVal addPage: (self reportOptionsFor: comp) label: (QCMultilanguageString on: 'Report options') ].
	retVal addPage: (QCQuerySaveComponent on: self) label: self querySaveLabel.
	^retVal