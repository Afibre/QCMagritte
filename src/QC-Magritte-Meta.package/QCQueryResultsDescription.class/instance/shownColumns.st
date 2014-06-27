accessing
shownColumns
	shownColumns ifNil: [ 
		| possibleColumns |
		possibleColumns := self possibleColumns.
		^possibleColumns select: [ :each | each visibleInReport ] ].
	^shownColumns