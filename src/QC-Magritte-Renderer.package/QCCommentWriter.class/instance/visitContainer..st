visiting
visitContainer: aDescription
	" here we have to write our custom method to format the objects the way we want.
	By default, this takes the first description and writes it
		... but we want simply the comment  "
	object comment
		ifNil: [ stream nextPutAll: object label ]
		ifNotNil: [ stream nextPutAll: object comment ]