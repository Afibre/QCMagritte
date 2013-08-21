accessing
multiStringParameter
	^('on:' asParser, whitespace star, 
		(stringLiteral / symbol)) ==> [ :tokens | tokens at: 3 ]