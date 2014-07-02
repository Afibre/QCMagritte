*qc-magritte-user
isValidUserid: aValue
	aValue ifNil: [ ^false ].
	aValue ifEmpty: [ ^false ].
	(self userWithId: aValue) ifNotNil: [ ^false ].
	^true