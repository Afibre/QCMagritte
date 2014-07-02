security
canRemove: aRow
	((self isInEdit: aRow) not and: [ aRow canRemove ]) ifFalse: [ ^false ].
	self model model hasUserManagement ifFalse: [ ^true ].
	self ifLoggedIn: [ 
		^self user canRemove: aRow class: self magritteDescription commonClass ].
	^false