accessing
toManyComponent
	^self magritteComponent children detect: [ :each | each hasOptionsPane ] ifNone: [ nil ]