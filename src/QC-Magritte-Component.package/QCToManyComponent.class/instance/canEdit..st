security
canEdit: aRow
	((self isInEdit: aRow) not and: [ aRow canEdit ]) ifFalse: [ ^false ].
	self model model hasUserManagement ifFalse: [ ^true ].
	self ifLoggedIn: [ 
		^self user canEdit: aRow class: self magritteDescription commonClass ].
	^(self model model hasClassUserRights: self model modelClass) not