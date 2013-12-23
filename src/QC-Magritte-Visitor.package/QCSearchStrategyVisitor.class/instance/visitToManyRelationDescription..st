visiting
visitToManyRelationDescription: aDescription
	super visitToManyRelationDescription: aDescription.
	(self target readUsing: aDescription) do: [ :each |
		self use: each during: [ self visit: each magritteDescription ] ]