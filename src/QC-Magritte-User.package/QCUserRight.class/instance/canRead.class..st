accessing
canRead: aRow class: aModelClass 
	(self rightsClass = aModelClass) ifTrue: [ ^self crud includes: 'R' ].
	^false