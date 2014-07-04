visiting-description
visitRelationDescription: aDescription
	self halt.
	aDescription commonClass hasUserRights ifFalse: [ ^super visitRelationDescription: aDescription ].
	self user
		ifNotNil: [ ^(self user rightsFor: aDescription) ifNotEmpty: [ ^super visitRelationDescription: aDescription ] ]
		ifNil: [ 
			self model ifNil: [ ^super visitRelationDescription: aDescription ].
			(self model hasClassUserRights: aDescription commonClass) ifFalse: [ ^super visitRelationDescription: aDescription ] ].
	self halt