accessing
at: anObject ifPresent: aBlock
	^aBlock value: (self write: anObject)