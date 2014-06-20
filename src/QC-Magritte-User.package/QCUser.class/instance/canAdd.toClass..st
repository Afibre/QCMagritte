accessing
canAdd: aClass toClass: aModelClass 
	self roles do: [ :each |
		(each canAdd: aClass toClass: aModelClass) ifTrue: [ ^true ] ].
	^false