accessing
canRemove
	(self parent notNil and: [ self parent respondsTo: #'canRemoveRole:' ]) ifTrue: [ ^self parent canRemoveRole: self  ].
	^super canRemove
	