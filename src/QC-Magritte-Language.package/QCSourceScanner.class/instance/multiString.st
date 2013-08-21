accessing
multiString
	^('QCMultilanguageString' asParser, whitespace plus, (multiStringParameter / multiStringSelector)) ==> [ :tokens | tokens at: 3 ]