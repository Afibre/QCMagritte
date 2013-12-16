maintenance
addLineFromFile: data languages: anOrderedCollection
	| multiLanguageString |
	multiLanguageString := (self onCsvData: data first).
	anOrderedCollection withIndexDo: [ :each :index |
		each ifNotNil: [ 
			(data at: index+1) ifNotNilDo: [ :translation |
				multiLanguageString translations at: each put: translation trimLeft ] ] ]