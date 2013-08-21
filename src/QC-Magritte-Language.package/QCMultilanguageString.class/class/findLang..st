accessing
findLang: aLang
	self allLanguages do: [ :each |
		(each languageName = aLang) ifTrue: [ ^each ] ].
	self halt