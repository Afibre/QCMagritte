security
canEdit: aRow
	^(self isInEdit: aRow) not and: [ aRow canEdit ]