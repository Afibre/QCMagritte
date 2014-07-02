actions
stringValueFor: aRow
	| item |
	item := self valueFor: aRow.
	item ifNil: [ ^String space ].
	^self labels value: item