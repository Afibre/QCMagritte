accessing
symbol
	^($# asParser, whitespace negate star) flatten ==> [ :token | Symbol readFromString: token ]