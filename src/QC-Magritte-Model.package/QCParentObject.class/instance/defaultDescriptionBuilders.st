accessing-magritte
defaultDescriptionBuilders
	self model ifNotNil: [ ^self model defaultDescriptionBuilders ].
	^super defaultDescriptionBuilders