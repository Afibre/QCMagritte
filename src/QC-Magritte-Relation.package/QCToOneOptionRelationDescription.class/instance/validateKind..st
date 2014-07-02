validating
validateKind: anObject
	super validateKind: anObject.
	(self options includes: anObject)
		ifTrue: [ ^ self ].
	MAKindError description: self signal: self kindErrorMessage