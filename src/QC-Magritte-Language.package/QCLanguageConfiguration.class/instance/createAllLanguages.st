initialization
createAllLanguages
	| retVal |
	retVal := QCMultilanguageString allLanguages.
	retVal ifNil: [ retVal := OrderedCollection new ].
	retVal ifEmpty: [ 
		retVal add: (QCLanguage on: 'English').
		retVal add: (QCLanguage on: 'Deutsch').
		retVal add: (QCLanguage on: 'Francais') ].
	^retVal