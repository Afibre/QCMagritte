accessing
canRemove: aRow class: aModelClass 
	(self rightsClass = aModelClass) ifTrue: [ ^self crud includes: 'D' ].
	^false