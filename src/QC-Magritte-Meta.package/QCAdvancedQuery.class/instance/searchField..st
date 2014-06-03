accessing
searchField: aString
	| tokens |
	aString ifNil: [ 
		searchField := nil.
		^self ].
	tokens := aString findTokens: '.'.
	tokens ifEmpty: [ searchField := nil. 
		^self ].
	(tokens size = 1) ifTrue: [ searchField := aString.
		^self ].
	searchField := tokens