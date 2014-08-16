testing
hasNext: anObject 
	| index rows |
	rows := self rows.
	index := (rows indexOf: anObject).
	^index > 0 and: [ index < rows size ]