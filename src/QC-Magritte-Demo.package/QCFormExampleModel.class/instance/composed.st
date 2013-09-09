accessing
composed
	^ composed ifNil: [ composed := QCFormExampleComposedObject on: self ]