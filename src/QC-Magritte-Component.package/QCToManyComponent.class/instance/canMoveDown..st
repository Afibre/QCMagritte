testing
canMoveDown: aRow
	| rows index |
	rows := self value.
	rows isDictionary ifTrue: [ ^false ].
	index := (rows indexOf: aRow).
	^(index > 0) and: [ index < rows size ]