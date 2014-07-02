security
canAdd: aClass
	self model hasUserManagement ifFalse: [ ^true ].
	self ifLoggedIn: [ ^self user canAdd: aClass toClass: self magritteDescription commonClass ].
	^(self model model hasClassUserRights: aClass) not