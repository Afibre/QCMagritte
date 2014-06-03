visiting
visitSingleOptionDescription: aDescription
	super visitSingleOptionDescription: aDescription.
	query acceptObject: (self target readUsing: aDescription)