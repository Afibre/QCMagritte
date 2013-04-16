accessing
errorsForDescription: aDescription 
	^ component errors select: [ :anError | anError tag = aDescription ]