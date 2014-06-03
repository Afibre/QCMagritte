accessing
selectValidDescriptions: aList
	^aList select: [ :each | each isKindOf: MAMagnitudeDescription ]