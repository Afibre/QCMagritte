visiting
visitDescription: aDescription
	aDescription label: aDescription label asMultilanguageString.
	aDescription comment: aDescription comment asMultilanguageString.
	aDescription group: aDescription group asMultilanguageString.
	aDescription requiredErrorMessage: aDescription requiredErrorMessage asMultilanguageString.
	aDescription multipleErrorsMessage: aDescription multipleErrorsMessage asMultilanguageString.
	aDescription kindErrorMessage: aDescription kindErrorMessage asMultilanguageString.
	aDescription conflictErrorMessage: aDescription conflictErrorMessage asMultilanguageString.
	aDescription customCommands do: [ :each | each label: each label asMultilanguageString ].
	super visitDescription: aDescription