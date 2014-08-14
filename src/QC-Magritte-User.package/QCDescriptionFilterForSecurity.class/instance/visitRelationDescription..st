visiting-description
visitRelationDescription: aDescription
	aDescription commonClass hasUserRights ifFalse: [ ^super visitRelationDescription: aDescription ].
	self ifLoggedIn: [ (self user rightsFor: aDescription)
			ifEmpty: [ ^self ]
			ifNotEmpty: [ ^super visitRelationDescription: aDescription ] ].
	self model ifNil: [ ^super visitRelationDescription: aDescription ].
	(self model canViewWithNoLogin: aDescription commonClass)
		ifTrue: [ ^super visitRelationDescription: aDescription ]