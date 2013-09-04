accessing
childDescription
	^childDescription ifNil: [ childDescription := self createChildDescription ]