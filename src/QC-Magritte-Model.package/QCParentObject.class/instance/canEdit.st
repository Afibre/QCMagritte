testing
canEdit
	(self class hasUserRights and: [ self hasParent ]) ifTrue: [ ^self parent canEdit ].
	^super canEdit