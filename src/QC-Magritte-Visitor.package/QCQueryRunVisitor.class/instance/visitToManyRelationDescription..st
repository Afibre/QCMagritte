visiting
visitToManyRelationDescription: aDescription
	super visitToManyRelationDescription: aDescription.
	(self target readUsing: aDescription) do: [ :each |
		query acceptObject: each ]