security
canAdd
	(self hasChanged not and: [ self magritteDescription canAdd ]) ifFalse: [ ^false ].
	self model model hasUserManagement ifFalse: [ ^true ].
	self ifLoggedIn: [ ^self user canAddToClass: self magritteDescription commonClass ].
	^false