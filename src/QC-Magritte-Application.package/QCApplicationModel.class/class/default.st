accessing
default
	default ifNil: [ default := self createDefault ].
	^default