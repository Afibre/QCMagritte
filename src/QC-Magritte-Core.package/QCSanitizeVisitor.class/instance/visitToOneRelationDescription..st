visiting
visitToOneRelationDescription: aDescription
	super visitToOneRelationDescription: aDescription.
	(self target readUsing: aDescription) ifNotNilDo: [ :value |
		self sanitize: value ]