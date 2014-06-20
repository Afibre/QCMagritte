accessing
canReadFromClass: aClass 
	(self rightsClass = aClass) ifTrue: [ ^self crud includes: 'R' ].
	^false