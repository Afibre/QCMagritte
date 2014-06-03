accessing
queryName
	queryName ifNil: [ ^'New query' ].
	^ queryName