visiting
visitToManyRelationDescription: aDescription
	super visitToManyRelationDescription: aDescription.
	(self target readUsing: aDescription) do: [ :each | self sanitize: each ]