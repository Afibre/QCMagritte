validation-private
validateKind: anObject
	"Validate ==anObject== to be of the right kind."
	(anObject isNumber and: [self unitOptions includes: nil] )ifTrue: [ ^self ].
	super validateKind: anObject.
	(anObject value isKindOf: self valueKind)
		ifFalse: [ MAKindError description: self signal: self kindErrorMessage ].
	(self unitOptions includes: anObject unit)
			ifFalse: [ MAKindError description: self signal: self kindErrorMessage ]