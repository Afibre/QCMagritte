visiting
visitToOneRelationDescription: aDescription
	super visitToOneRelationDescription: aDescription.
	found := self found or: [ self findIn: (self target readUsing: aDescription) greaseString ]