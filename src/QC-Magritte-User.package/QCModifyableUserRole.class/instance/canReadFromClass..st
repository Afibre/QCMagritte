accessing
canReadFromClass: aClass 
	self rights do: [:each | (each canAddToClass: aClass) ifTrue: [ ^true ] ].
	^false