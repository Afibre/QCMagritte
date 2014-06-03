visiting
sanitizePrivate: aValue
	aValue isString ifTrue: [ ^self ].
	aValue perform: self selector