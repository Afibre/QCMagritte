accessing
shownColumns
	shownColumns ifNil: [ 
		| possibleColumns |
		possibleColumns := self possibleColumnsFor: self resultType.
		^possibleColumns select: [ :each | each visibleInReport ] ].
	^shownColumns