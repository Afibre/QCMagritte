accessing
at: anObject ifPresent: aBlock
	" mock a dictionary for writing the label "
	^aBlock value: (self write: anObject)