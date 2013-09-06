security
canRemove: aRow
	^(self isInEdit: aRow) not and: [ aRow canRemove ]