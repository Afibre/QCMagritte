accessing
allLanguages
	^ allLanguages ifNil: [ allLanguages := self createAllLanguages ]