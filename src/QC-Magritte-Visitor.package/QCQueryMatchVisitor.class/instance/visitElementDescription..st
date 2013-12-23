visiting
visitElementDescription: aDescription
	super visitElementDescription: aDescription.
	(query matches: (target readUsing: aDescription) description: aDescription)
		ifTrue: [ result := true ]