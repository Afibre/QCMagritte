accessing
toManyComponent
	" there should be exactly one child "
	^self queryResultsComponent children detect: [ :each | each hasOptionsPane ] ifNone: [ nil ]