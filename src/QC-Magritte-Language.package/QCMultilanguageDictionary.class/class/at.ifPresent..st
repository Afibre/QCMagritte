accessing
at: aSymbol ifPresent: aBlock
	^aBlock value: (self at: aSymbol)