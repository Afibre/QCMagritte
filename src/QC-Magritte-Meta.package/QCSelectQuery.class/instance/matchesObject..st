running
matchesObject: anObject
	^ (QCQueryMatchVisitor on: anObject description: anObject magritteDescription query: self)