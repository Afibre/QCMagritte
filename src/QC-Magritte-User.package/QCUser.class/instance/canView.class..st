security
canView: aRow class: aModelClass 
	self roles do: [ :each | (each canView: aRow class: aModelClass) ifTrue: [ ^true ] ].
	^(self model hasClassUserRights: aModelClass) not