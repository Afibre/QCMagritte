rendering
renderElement: aDescription
	aDescription group = group
		ifFalse: [ self renderGroup: aDescription ].
	self groupDescriptions
		ifNil: [ self renderElementInternal: aDescription ]
		ifNotNil: [ self groupDescriptions add: aDescription ]