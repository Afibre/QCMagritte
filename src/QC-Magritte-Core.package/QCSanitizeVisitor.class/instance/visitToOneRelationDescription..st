visiting
visitToOneRelationDescription: aDescription
	super visitToManyRelationDescription: aDescription.
	(self target readUsing: aDescription) ifNotNilDo: [ :value |
		self sanitize: value ]