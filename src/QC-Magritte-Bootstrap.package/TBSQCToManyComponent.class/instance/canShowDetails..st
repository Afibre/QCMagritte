accessing
canShowDetails: anObject
	self canEdit ifTrue: [ ^super canShowDetails: anObject ].
	^false