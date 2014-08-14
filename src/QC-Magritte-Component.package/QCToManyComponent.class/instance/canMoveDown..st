testing
canMoveDown: aRow
	| rows index |
	rows := self value.
	index := (rows indexOf: aRow).
	^(index > 0) and: [ index < rows size ]