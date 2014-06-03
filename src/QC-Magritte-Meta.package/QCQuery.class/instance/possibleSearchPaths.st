accessing-model
possibleSearchPaths
	| retVal |
	retVal := OrderedCollection new.
	retVal add: self model magritteDescription.
	self model magritteDescription do: [ :each |
		(each isKindOf: MAToManyRelationDescription) ifTrue: [ retVal add: each ] ].
	^retVal