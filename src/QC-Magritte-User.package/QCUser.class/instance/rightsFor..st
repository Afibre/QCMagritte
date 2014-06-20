security
rightsFor: aDescription 
	| retVal |
	retVal := Set new.
	self roles do: [ :each |
		retVal addAll: (each rightsFor: aDescription) ].
	^retVal