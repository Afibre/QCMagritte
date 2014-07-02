visiting
visitContainerDescription: aDescription
	aDescription commands do: [ :each | each label: each label asMultilanguageString ].
	super visitContainerDescription: aDescription