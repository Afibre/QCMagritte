users
isValidUseridError: aValue
	aValue ifNil: [ ^QCMultilanguageString on: 'Username should not be empty' ].
	aValue ifEmpty: [ ^QCMultilanguageString on: 'Username should not be empty' ].
	(self userWithId: aValue) ifNotNil: [ ^(QCMultilanguageString on: 'There already is a user with name'),' ', aValue ].
	^''