visiting
visitToOneRelationDescription: aDescription
	super visitToOneRelationDescription: aDescription.
	query acceptObject: (self target readUsing: aDescription)