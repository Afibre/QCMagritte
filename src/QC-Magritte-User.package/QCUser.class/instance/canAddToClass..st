accessing
canAddToClass: aClass 
	self roles do: [ :each | (each canAddToClass: aClass) ifTrue: [ ^true ] ].
	^false