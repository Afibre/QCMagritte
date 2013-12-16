maintenance
loadFromString: aString
	" this does not work yet, since we have a problem with the encoding "
	| first languages data |
	data := (NeoCSVReader on: aString readStream)
		separator: Character tab;
		upToEnd.
	first := true.
	data do: [ :lineData  |
		first
			ifTrue: [ 
				languages := OrderedCollection new.
				lineData allButFirstDo: [ :each | languages add: (self findLang: each trimLeft) ].
				first := false ]
			ifFalse: [ self addLineFromFile: lineData languages: languages ] ]