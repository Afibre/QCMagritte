accessing
subQueries: aCollection
	subQueries := aCollection.
	aCollection do: [ :each | each parent: self ]