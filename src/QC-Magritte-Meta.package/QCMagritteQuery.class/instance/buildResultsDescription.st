accessing
buildResultsDescription
	| retVal |
	retVal := self parent setReferenceFor: self targetDescription copy.
	retVal queryComponentClass
	 	ifNotNil: [ retVal componentClass: retVal queryComponentClass ].
	^retVal