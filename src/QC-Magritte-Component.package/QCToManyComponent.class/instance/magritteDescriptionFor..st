private
magritteDescriptionFor: anObject
	| retVal |
	retVal := anObject magritteDescription.
	retVal ifNotNil: [ 
		|  builder |
		builder := retVal descriptionBuilder.
		builder ifNotNil: [ ^builder buildFrom: retVal target: anObject ] ].
	^retVal