testing
canRemove
	(self class hasUserRights and: [ self hasParent ]) ifTrue: [ ^self parent canEdit ].
	^super canRemove