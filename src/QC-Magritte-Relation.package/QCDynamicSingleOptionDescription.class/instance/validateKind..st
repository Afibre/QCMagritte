validating
validateKind: anObject
	self hidden ifTrue: [ ^self ].
	super validateKind: anObject