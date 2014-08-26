accessing
nestedObject
	^ nestedObject ifNil: [ nestedObject := QCTest2LevelNestedObject new ]