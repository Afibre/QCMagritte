security
canRemove: aRow
	((self isInEdit: aRow) not and: [ aRow canRemove ]) ifFalse: [ ^false ].
	self applicationModel hasUserManagement ifFalse: [ ^true ].
	self ifLoggedIn: [ 
		^self user canRemove: aRow class: self magritteDescription commonClass ].
	^(self applicationModel hasClassUserRights: self magritteDescription commonClass) not