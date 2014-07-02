security
canAdd: aClass toClass: aModelClass 
	self roles do: [ :each |
		(each canAdd: aClass toClass: aModelClass) ifTrue: [ ^true ] ].
	^(self model hasClassUserRights: aModelClass) not