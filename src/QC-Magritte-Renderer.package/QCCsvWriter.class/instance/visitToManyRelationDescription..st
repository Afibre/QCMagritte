visiting
visitToManyRelationDescription: aDescription
	self object
		do: [ :each | self object: each during: [ self visit: each magritteDescription ] ]
		separatedBy: [ self stream lf ]