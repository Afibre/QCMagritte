accessing
resultsDescription: anObject
	resultsDescription := anObject.
	anObject ifNotNil: [ anObject parent: self ]