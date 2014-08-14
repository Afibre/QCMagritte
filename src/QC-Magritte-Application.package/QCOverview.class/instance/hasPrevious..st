testing
hasPrevious: aQCObject
	| rows index | 
	rows := self report cache.
	index := rows indexOf: aQCObject.
	^ index > 1.
	