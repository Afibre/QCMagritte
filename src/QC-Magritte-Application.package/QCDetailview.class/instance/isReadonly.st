testing
isReadonly
	self model hasUserManagement ifFalse: [ ^false ].
	self ifLoggedIn: [ ^self model canView: self target class: self target modelClass ].
	^self model hasClassUserRights: self target modelClass