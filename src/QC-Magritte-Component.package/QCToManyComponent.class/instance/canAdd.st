security
canAdd
	(self hasChanged not and: [ self magritteDescription canAdd ]) ifFalse: [ ^false ].
	self applicationModel hasUserManagement ifFalse: [ ^true ].
	self ifLoggedIn: [ ^self user canAddToClass: self magritteDescription commonClass ].
	^(self applicationModel hasClassUserRights: self magritteDescription commonClass) not