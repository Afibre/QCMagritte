maintenance
loadFromString: aString
	" this does not work yet, since we have a problem with the encoding "

	| first languages data |
	data := (NeoCSVReader on: aString readStream)
		separator: $,;
		upToEnd.
	first := true.
	data
		do: [ :lineData | 
			first
				ifTrue: [ 
					| f |
					languages := OrderedCollection new.
					f := true.
					lineData
						do: [ :each | 
							f
								ifTrue: [ f := false ]
								ifFalse: [ languages add: (self findLang: each trimLeft) ] ].
					first := false ]
				ifFalse: [ self addLineFromFile: lineData languages: languages ] ]