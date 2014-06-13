accessing
at: aString ifAbsent: aBlock
	^self tutorials detect: [ :each | each title = aString ] ifNone: aBlock