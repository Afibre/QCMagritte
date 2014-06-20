security
rootsFor: aTarget
	| retVal |
	retVal := OrderedCollection new.
	aTarget magritteDescription do: [ :aDescription |
		| rights |
		rights := self rightsFor: aDescription.
		rights ifNotEmpty: [ 
			retVal add: aDescription ] ].
	^retVal
