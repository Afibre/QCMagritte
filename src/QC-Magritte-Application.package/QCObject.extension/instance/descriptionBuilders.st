*qc-magritte-application
descriptionBuilders
	self model isNil ifTrue: [ ^self defaultDescriptionBuilders ].
	(self model respondsTo: #defaultDescriptionBuilders) ifFalse: [ ^self defaultDescriptionBuilders ].
	^self model defaultDescriptionBuilders