accessing
shownColumns
	shownColumns ifNil: [ ^self possibleColumns select: [ :each | each isVisible ] ].
	^shownColumns