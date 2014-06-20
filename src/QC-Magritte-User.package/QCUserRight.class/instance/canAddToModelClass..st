accessing
canAddToModelClass: aClass 
	(self rightsClass = aClass) ifTrue: [ ^self crud includes: 'C' ].
	^false