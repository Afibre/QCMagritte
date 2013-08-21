maintenance
loadFromFile: aFilename
	" this does not work yet, since we have a problem with the encoding "
	| first lang data |
	aFilename asFileReference readStreamDo: [ :in |
		data := (NeoCSVReader on: in) upToEnd ].
	first := true.
	data do: [ :each |
		first
			ifTrue: [ 
				lang := self findLang: each second trimLeft.
				first := false ]
			ifFalse: [ self addLineFromFile: each lang: lang ] ]