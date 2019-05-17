accessing
baseType
	self resultsDescription resultType ifNotNil: [ :retVal | ^retVal ].
	^self select baseType