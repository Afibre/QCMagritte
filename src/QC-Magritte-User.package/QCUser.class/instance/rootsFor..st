security
rootsFor: aTarget
	| retVal |
	retVal := OrderedCollection new.
	aTarget magritteDescription do: [ :aDescription |
		aDescription isRoot ifTrue: [ 
			 | rights |
			rights := self rightsFor: aDescription.
			rights ifNotEmpty: [ 
				retVal add: aDescription ] ] ].
	^retVal
