accessing
findLang: aLang
	self allLanguages do: [ :each |
		(each languageName = aLang) ifTrue: [ ^each ] ].
	^nil