security
canRemove: aRow
	" this is a multi select, so removing does not 'D'estroy the element but 'U'pdate "
	(self isInEdit: aRow) ifTrue: [ ^false ].
	self applicationModel hasUserManagement ifFalse: [ ^true ].
	self ifLoggedIn: [ 
		^self user canEdit: aRow class: self magritteDescription commonClass ].
	^(self applicationModel hasClassUserRights: self magritteDescription commonClass) not