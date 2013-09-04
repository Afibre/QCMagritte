accessing
baseType
	self resultsDescription resultType ifNotNilDo: [ :retVal | ^retVal ].
	^self select baseType