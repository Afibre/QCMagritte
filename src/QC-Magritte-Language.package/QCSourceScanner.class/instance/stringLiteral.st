accessing
stringLiteral
	^($' asParser, stringCharacters optional, $' asParser) ==> [ :tokens | tokens second ]