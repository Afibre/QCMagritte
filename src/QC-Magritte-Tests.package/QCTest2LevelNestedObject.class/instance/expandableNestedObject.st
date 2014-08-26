accessing
expandableNestedObject
	^ expandableNestedObject ifNil: [ expandableNestedObject := QCTestNestedObject new ]