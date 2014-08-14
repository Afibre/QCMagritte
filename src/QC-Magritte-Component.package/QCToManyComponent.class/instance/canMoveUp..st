testing
canMoveUp: aRow
	| rows |
	rows := self value.
	^(rows indexOf: aRow) > 1