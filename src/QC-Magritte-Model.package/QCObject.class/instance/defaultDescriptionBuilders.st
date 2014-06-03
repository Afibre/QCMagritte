accessing-magritte
defaultDescriptionBuilders
	(self model isNil or: [ self model = self ])
		ifTrue: [ ^(Array with: QCDescriptionFlattener with: QCDescriptionBuildMultiLanguage) ].
	^self model defaultDescriptionBuilders