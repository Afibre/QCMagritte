security
canAdd: aClass
	| applicationModel |
	applicationModel := self model model.
	applicationModel hasUserManagement ifFalse: [ ^true ].
	self ifLoggedIn: [ ^self user canAdd: aClass toClass: self magritteDescription commonClass ].
	^(applicationModel hasClassUserRights: aClass) not