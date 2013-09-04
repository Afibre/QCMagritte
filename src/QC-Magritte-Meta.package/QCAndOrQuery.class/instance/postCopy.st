copying
postCopy
	| copiedQueries |
	super postCopy.
	copiedQueries := OrderedCollection new.
	self subQueries do: [ :each | copiedQueries add: each copy ].
	subQueries := copiedQueries