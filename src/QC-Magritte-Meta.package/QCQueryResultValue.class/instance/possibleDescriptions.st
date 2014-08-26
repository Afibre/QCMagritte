accessing-magritte
possibleDescriptions
	self baseType ifNil: [ ^#() ].
	^self baseType magritteTemplate magritteDescription children select: [ :each | each isKindOf: MAToManyRelationDescription ]