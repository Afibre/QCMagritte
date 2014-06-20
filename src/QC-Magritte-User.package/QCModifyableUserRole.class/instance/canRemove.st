accessing
canRemove
	self parent ifNil: [ ^super canRemove ].
	^self parent canRemoveRole: self