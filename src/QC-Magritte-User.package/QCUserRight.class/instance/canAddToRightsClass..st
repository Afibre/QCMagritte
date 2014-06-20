accessing
canAddToRightsClass: aClass 
	(self rightsClass = aClass) ifTrue: [ ^self crud includes: 'C' ].
	^false