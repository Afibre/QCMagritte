security
canAdd: aClass
	self applicationModel hasUserManagement ifFalse: [ ^true ].
	self ifLoggedIn: [ ^self user canAdd: aClass toClass: self magritteDescription commonClass ].
	^(self applicationModel hasClassUserRights: aClass) not