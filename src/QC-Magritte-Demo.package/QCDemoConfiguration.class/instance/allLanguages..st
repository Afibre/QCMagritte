accessing
allLanguages: anArray
	anArray do: [ :each |
		(QCMultilanguageString allLanguages includes: each)
			ifFalse: [ QCMultilanguageString allLanguages add: each ] ]