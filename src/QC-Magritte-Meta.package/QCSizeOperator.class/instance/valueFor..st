calculating
valueFor: anObject
	anObject isCollection ifFalse: [ ^1 ].
	^anObject size