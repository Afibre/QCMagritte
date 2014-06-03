accessing
on: anObject description: aDescription find: aString
	^ self new 
		target: anObject;
		searchString: aString;
		visit: aDescription;
		found