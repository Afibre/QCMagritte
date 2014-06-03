running
procesObject: anObject
	^ (QCQueryRunVisitor on: anObject description: anObject magritteDescription query: self)