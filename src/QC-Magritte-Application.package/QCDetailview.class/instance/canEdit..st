testing
canEdit: aTarget
	aTarget isCollection ifTrue: [ ^false ].
	aTarget canEdit ifFalse: [ ^false ].
	self target model hasUserManagement ifFalse: [ ^true ].
	self ifLoggedIn: [ 
		^self user canEdit: aTarget class: aTarget modelClass ].
	^false