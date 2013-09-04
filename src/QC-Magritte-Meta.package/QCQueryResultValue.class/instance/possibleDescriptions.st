accessing-magritte
possibleDescriptions
	self baseType ifNil: [ ^#() ].
	^self baseType template magritteDescription children select: [ :each | each isKindOf: MAToManyRelationDescription ]