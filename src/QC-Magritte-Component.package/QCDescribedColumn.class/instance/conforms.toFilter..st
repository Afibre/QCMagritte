private
conforms: anObject toFilter: aString
	aString ifEmpty: [ ^true ].
	^(self stringFor: anObject) matches: aString