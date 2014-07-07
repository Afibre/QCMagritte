*qc-magritte-user
hasClassUserRights: aClass
	(self allRightsClasses includes: aClass) ifTrue: [ ^true ].
	(self allModelClasses includes: aClass) ifTrue: [ ^false ].
	^aClass hasUserRights