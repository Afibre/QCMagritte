accessing
curLanguage
	self user ifNotNilDo: [ :user | ^user curLanguage ].
	^self class curLanguage