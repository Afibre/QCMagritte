accessing
label
	self queryName ifEmpty: [ ^QCMultilanguageString on: 'New query' ].
	^self queryName