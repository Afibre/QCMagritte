visiting
visitContainer: aContainer
	aContainer customCommands do: [ :each | each label: each label asMultilanguageString ].
	super visitContainer: aContainer