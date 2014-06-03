maintenance
loadFromFile: aFilename
	" this does not work yet, since we have a problem with the encoding "

	| first languages data |
	aFilename asFileReference readStreamDo: [ :in | data := (NeoCSVReader on: in) upToEnd ].
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
								ifTrue: [ first := false ]
								ifFalse: [ languages add: (self findLang: each trimLeft) ] ].
					first := false ]
				ifFalse: [ self addLineFromFile: lineData languages: languages ] ]