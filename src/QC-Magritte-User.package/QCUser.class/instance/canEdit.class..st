security
canEdit: aRow class: aModelClass 
	self roles do: [ :each | (each canEdit: aRow class: aModelClass) ifTrue: [ ^true ] ].
	^(self model hasClassUserRights: aModelClass) not