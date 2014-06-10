accessing-magritte
stringWriter
	self model isNil ifTrue: [ ^self defaultStringWriter ].
	^self model defaultStringWriter