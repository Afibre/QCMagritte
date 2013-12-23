accessing
on: anObject description: aDescription query: aQuery
	^ self new 
		target: anObject;
		query: aQuery;
		visit: aDescription