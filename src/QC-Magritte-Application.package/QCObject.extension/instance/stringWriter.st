*qc-magritte-application
stringWriter
	self model isNil ifTrue: [ ^self defaultStringWriter ].
	(self model respondsTo: #defaultStringWriter) ifFalse: [ ^self defaultStringWriter ].
	^self model defaultStringWriter