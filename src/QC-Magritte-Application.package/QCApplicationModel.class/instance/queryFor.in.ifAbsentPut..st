accessing
queryFor: aDescription in: anObject ifAbsentPut: aBlock 
	" we have to make sure for this object and description only one instance is created "
	^(self rootQueries at: anObject ifAbsentPut: [ Dictionary new ]) at: aDescription ifAbsent: aBlock