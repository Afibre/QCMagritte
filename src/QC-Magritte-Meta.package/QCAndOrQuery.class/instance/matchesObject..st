running
matchesObject: anObject
	self isAndQuery ifTrue: [
		^self subQueries allSatisfy: [ :subQuery | subQuery matchesObject: anObject ] ].
	^self subQueries anySatisfy: [ :subQuery | subQuery matchesObject: anObject ]