accessing
displayName
	| retVal |
	retVal := self name.
	^(retVal copyFrom: 3 to: retVal size) 