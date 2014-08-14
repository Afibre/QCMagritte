visiting
visitToManyRelationDescription: aDescription
	self object isCollection ifTrue: [  ^super visitToManyRelationDescription: aDescription ].
	self visit: object magritteDescription.