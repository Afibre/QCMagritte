accessing
multiStringSelector
	^whitespace negate star flatten ==> [ :token | 
		Symbol readFromString: '#', token ]