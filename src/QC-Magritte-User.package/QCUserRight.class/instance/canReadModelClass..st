accessing
canReadModelClass: aClass 
	(self rightsClass = aClass) ifTrue: [ ^self crud includes: 'R' ].
	^false