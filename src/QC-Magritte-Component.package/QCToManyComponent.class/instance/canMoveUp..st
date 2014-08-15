testing
canMoveUp: aRow
	| rows |
	rows := self value.
	rows isDictionary ifTrue: [ ^false ].
	^(rows indexOf: aRow) > 1