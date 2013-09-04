accessing-magritte
possibleColumnsFor: aResultType
	aResultType ifNil: [ ^#() ].
	^aResultType template magritteDescription children