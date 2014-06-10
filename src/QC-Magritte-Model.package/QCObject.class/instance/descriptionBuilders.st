accessing-magritte
descriptionBuilders
	self model isNil ifTrue: [ ^self defaultDescriptionBuilders ].
	^self model defaultDescriptionBuilders