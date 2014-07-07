security
canAdd
	self applicationModel hasUserManagement ifFalse: [ ^true ].
	" this is a multi select, so adding will only 'change' an instance of this class, not actually create a new instance. "
	self ifLoggedIn: [ ^self user canEdit: self model class: self commonClass ].
	^(self applicationModel hasClassUserRights: self commonClass) not