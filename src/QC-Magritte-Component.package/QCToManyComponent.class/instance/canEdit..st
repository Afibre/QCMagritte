security
canEdit: aRow
	((self isInEdit: aRow) not and: [ aRow canEdit ]) ifFalse: [ ^false ].
	self applicationModel ifNil: [ ^true ].
	self applicationModel hasUserManagement ifFalse: [ ^true ].
	self ifLoggedIn: [ 
		^self user canEdit: aRow class: self magritteDescription commonClass ].
	^(self applicationModel hasClassUserRights: self model modelClass) not