accessing
curLanguage
	self user ifNotNil: [ :user | ^ user curLanguage ].
	^ self class curLanguage