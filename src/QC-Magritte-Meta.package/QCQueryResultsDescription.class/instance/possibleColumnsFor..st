accessing-magritte
possibleColumnsFor: aResultType
	aResultType ifNil: [ ^#() ].
	^(self referenceFor: aResultType) children