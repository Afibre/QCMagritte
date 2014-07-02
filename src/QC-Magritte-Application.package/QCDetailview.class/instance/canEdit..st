testing
canEdit: aTarget
	aTarget isCollection ifTrue: [ ^false ].
	aTarget canEdit ifFalse: [ ^false ].
	self model hasUserManagement ifFalse: [ ^true ].
	self ifLoggedIn: [ 
		^self user canEdit: aTarget class: aTarget modelClass ].
	^false