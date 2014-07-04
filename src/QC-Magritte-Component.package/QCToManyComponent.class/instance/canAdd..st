security
canAdd: aClass
	| rootModel |
	rootModel := self model model.
	rootModel hasUserManagement ifFalse: [ ^true ].
	self ifLoggedIn: [ ^self user canAdd: aClass toClass: self magritteDescription commonClass ].
	^(rootModel hasClassUserRights: aClass) not