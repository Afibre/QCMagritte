accessing
defaultString
	(self key = #dateSeparator) ifTrue: [ ^'.' ].
	^self key asString