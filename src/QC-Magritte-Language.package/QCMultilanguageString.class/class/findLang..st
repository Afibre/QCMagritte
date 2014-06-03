accessing
findLang: aLang
	self allLanguages
		do: [ :each | 
			each languageName = aLang
				ifTrue: [ ^ each ] ].
	self allLanguages
		do: [ :each | 
			each languageName asMultilanguageString stringValue = aLang
				ifTrue: [ ^ each ] ].
	^ nil