accessing-magritte
firstNameFor: aString 
	^(Character space split: aString)
		ifEmpty: [ '' ]
		ifNotEmptyDo: [ :value | value first ]