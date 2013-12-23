visiting
visitElementDescription: aDescription
	super visitElementDescription: aDescription.
	found := self found or: [ self findIn: (self target readUsing: aDescription) description: aDescription ]