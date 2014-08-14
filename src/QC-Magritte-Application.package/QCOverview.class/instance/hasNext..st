testing
hasNext: aQCObject
	| rows index |
	rows := self report cache.
	index := rows indexOf: aQCObject.
	^ index > 0 and:[index < rows size].