accessing
singletons
	^ singletons ifNil: [ singletons := Dictionary new ]