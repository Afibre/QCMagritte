accessing
canEdit: anObject
	self canEdit ifTrue: [ ^super canEdit: anObject ].
	^false