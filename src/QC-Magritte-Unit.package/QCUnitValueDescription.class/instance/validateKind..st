validation-private
validateKind: anObject
	"Validate ==anObject== to be of the right kind."
	anObject isNumber ifTrue: [ ^self ].
	super validateKind: anObject.
	(anObject value isKindOf: self valueKind)
		ifFalse: [ MAKindError description: self signal: self kindErrorMessage ].
	anObject isNumber
		ifTrue: [ (self unitOptions includes: nil)
			ifFalse: [ MAKindError description: self signal: self kindErrorMessage ] ]
		ifFalse: [ (self unitOptions includes: anObject unit)
			ifFalse: [ MAKindError description: self signal: self kindErrorMessage ] ]