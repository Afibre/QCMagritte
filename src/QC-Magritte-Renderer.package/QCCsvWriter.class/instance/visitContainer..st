visiting
visitContainer: aDescription
	" here we have to write our custom method to format the objects the way we want.
	By default, this takes the first description and writes it
		... but we want to extend this and  use separators  "
	| first |
	first := true.
	aDescription do: [ :each |
		each isVisible ifTrue: [
			first ifTrue: [ first := false ]
				ifFalse:[ stream nextPutAll: self separator ].
			stream nextPut: $".
			each stringWriter
				write: (self object readUsing: each)
				description: each to: stream ].
			stream nextPut: $" ]