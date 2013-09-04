accessing-magritte
defaultColumnsFor: aResultType
	^(self possibleColumnsFor: aResultType) select: [ :each | each isVisible ]