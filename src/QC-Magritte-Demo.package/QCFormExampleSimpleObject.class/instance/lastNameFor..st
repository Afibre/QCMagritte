accessing-magritte
lastNameFor: aString 
	| startIndex |
	startIndex := (self firstNameFor: aString) size +1.
	(startIndex < aString size) ifTrue: [ ^aString copyFrom: startIndex to: aString size ].
	^''