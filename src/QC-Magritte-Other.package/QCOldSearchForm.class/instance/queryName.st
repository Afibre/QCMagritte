accessing
queryName
	queryName ifNil: [ ^'New query' ].
	queryName ifEmpty: [ ^'New query' ].
	^ queryName