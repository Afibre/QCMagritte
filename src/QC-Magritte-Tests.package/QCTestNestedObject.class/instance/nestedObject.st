accessing
nestedObject
	^ nestedObject ifNil: [ nestedObject := QCTestObject new ]