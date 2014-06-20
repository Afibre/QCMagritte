accessing
canEdit: aRow class: aModelClass 
	(self rightsClass = aModelClass) ifTrue: [ ^self crud includes: 'U' ].
	^false