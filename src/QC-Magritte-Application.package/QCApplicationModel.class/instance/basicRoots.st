accessing
basicRoots
	^self magritteDescription children select: [ :each | each isRelationDescription ]