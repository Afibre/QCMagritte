testing
canEdit: aTarget
	aTarget isCollection ifTrue: [ ^false ].
	aTarget canEdit ifFalse: [ ^false ].
	aTarget model hasUserManagement ifFalse: [ ^true ].
	self ifLoggedIn: [ 
		^self user canEdit: aTarget class: aTarget modelClass ].
	^(aTarget model hasClassUserRights: aTarget modelClass) not