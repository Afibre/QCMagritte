instance creation
onCsvData: aString
	(aString beginsWith: '#')
		ifTrue: [ ^self on: (aString copyFrom: 2 to: aString size) asSymbol ].
	(aString beginsWith: '>>') ifTrue: [ ^self on: (Smalltalk at: (aString copyFrom: 3 to: aString size) asSymbol ifAbsent: [ aString ]) ].
	^self on: aString