accessing
canRemove: aRow modelClass: aModelClass 
	(self rightsClass = aModelClass) ifTrue: [ ^self crud includes: 'D' ].
	^false