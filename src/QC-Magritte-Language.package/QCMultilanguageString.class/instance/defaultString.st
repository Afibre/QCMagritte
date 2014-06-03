accessing
defaultString
	(self key = #dateSeparator) ifTrue: [ ^'.' ].
	(self key isBehavior) ifTrue: [ 
		| className |
		className := self key asString.
		^(className copyFrom: 3 to: className size) asCapitalizedPhrase ].
	^self key asString