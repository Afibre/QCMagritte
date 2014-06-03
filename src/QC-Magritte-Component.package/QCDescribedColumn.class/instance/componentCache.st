accessing
componentCache
	^ componentCache ifNil: [ ^componentCache := Dictionary new ]