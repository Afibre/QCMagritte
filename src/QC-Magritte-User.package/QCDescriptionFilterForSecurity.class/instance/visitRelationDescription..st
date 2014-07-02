visiting-description
visitRelationDescription: aDescription
	aDescription commonClass hasUserRights ifFalse: [ ^super visitRelationDescription: aDescription ].
	self user
		ifNotNil: [ ^(self user rightsFor: aDescription) ifNotEmpty: [ ^super visitRelationDescription: aDescription ] ]
		ifNil: [ ^super visitRelationDescription: aDescription ]