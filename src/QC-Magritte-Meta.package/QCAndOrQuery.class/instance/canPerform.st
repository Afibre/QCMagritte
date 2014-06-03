testing
canPerform
	^self subQueries allSatisfy: [ :each | each canPerform ]