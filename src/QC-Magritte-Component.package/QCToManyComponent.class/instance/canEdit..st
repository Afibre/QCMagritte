security
canEdit: aRow
	((self isInEdit: aRow) not and: [ aRow canEdit ]) ifFalse: [ ^false ].
	self model hasUserManagement ifFalse: [ ^true ].
	self ifLoggedIn: [ 
		^self user canEdit: aRow class: self magritteDescription commonClass ].
	^false