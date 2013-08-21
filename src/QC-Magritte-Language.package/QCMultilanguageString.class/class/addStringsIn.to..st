convenience
addStringsIn: aMethodReference to: aSet
	aSet addAll: (QCSourceScanner parse: aMethodReference sourceCode startingAt: #start).
	^aSet