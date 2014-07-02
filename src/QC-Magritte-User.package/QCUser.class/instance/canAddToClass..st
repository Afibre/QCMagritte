security
canAddToClass: aClass 
	self roles do: [ :each | (each canAddToClass: aClass) ifTrue: [ ^true ] ].
	^(self model hasClassUserRights: aClass) not