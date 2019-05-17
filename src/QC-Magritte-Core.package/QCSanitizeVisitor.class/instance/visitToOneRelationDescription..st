visiting
visitToOneRelationDescription: aDescription
	super visitToOneRelationDescription: aDescription.
	(self target readUsing: aDescription) ifNotNil: [ :value |
		self sanitize: value ]