accessing
valuesFor: aString
	^self labels select: [ :each | 
		each includesSubstring: aString caseSensitive: false ]