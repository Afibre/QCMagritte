accessing
shownColumns
	shownColumns ifNil: [ ^self possibleColumns select: [ :each | each visibleInReport ] ].
	^shownColumns