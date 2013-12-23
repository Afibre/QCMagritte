visiting
visitSingleOptionDescription: aDescription
	super visitSingleOptionDescription: aDescription.
	found := self found or: [ self findIn: (self target readUsing: aDescription) greaseString ]