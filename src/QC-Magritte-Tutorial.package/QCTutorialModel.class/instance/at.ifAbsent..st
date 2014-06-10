accessing
at: aString ifAbsent: aBlock
	^self chapters detect: [ :each | each title = aString ] ifNone: aBlock