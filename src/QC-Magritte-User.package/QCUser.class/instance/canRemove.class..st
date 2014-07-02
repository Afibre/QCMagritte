security
canRemove: aRow class: aModelClass 
	self roles do: [ :each | (each canRemove: aRow class: aModelClass) ifTrue: [ ^true ] ].
	^(self model hasClassUserRights: aModelClass) not