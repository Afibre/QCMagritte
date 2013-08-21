accessing
stringValue
	| retVal |
	retVal := self translations at: self curLanguage ifAbsent: [ nil ].
	retVal ifNil: [ ^self defaultString ].
	retVal ifEmpty: [ ^self defaultString ].
	^retVal