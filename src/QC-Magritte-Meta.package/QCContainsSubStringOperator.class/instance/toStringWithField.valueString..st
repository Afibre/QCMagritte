converting
toStringWithField: aSearchField valueString: aValueString
	aSearchField ifEmpty: [ ^(QCMultilanguageString on: 'Find'), ' ', aValueString ].
	^(QCMultilanguageString on: 'Find'), ' ',  aValueString, ' ', (QCMultilanguageString on: 'in field'), ' ', aSearchField