maintenance
loadFromString: aString separator: aCharacter
	| first languages data messages lineCount |
	messages := OrderedCollection new.
	data := (NeoCSVReader on: aString readStream)
		separator: aCharacter;
		upToEnd.
	first := true.
	lineCount := 0.
	data do: [ :lineData  |
		first
			ifTrue: [ 
				| f |
				languages := OrderedCollection new.
				f := true.
				lineData do: [ :each | 
					f 	ifTrue: [ f := false ]
						ifFalse: [
							(languages add: (self findLang: each trimLeft))
								ifNil: [ messages add: ((QCMultilanguageString on: 'Could not find language'), ' ', each trimLeft) ]
								ifNotNilDo: [ :lang |
									messages add: ((QCMultilanguageString on: 'Loading data for'), ' ', lang languageName) ] ] ].
				first := false ]
			ifFalse: [ self addLineFromFile: lineData languages: languages.
				lineCount := lineCount +1 ] ].
	messages add: (QCMultilanguageString on: 'Number of translations:', ' ', lineCount asString).
	^messages