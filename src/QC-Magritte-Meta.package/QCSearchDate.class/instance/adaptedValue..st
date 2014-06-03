accessing
adaptedValue: aValue
	| formatString parts |
	(self isValidValue: aValue) ifFalse: [ ^aValue ].
	formatString := self format: aValue.
	formatString size < 8 ifTrue: [ ^aValue ].
	parts := formatString findTokens: ':-/.'.
	^Date year: (parts at: 3) asInteger month: (parts second) asInteger day: (parts first) asInteger
	
