visiting
sanitizePrivate: aValue
	aValue isString ifTrue: [ ^self ].
	aValue isModelObject ifTrue: [ aValue perform: self selector ]