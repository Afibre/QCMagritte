running
perform
	| retVal |
	retVal := self parent resultsProcessor.
	QCQueryRunVisitor on: self parent target description: self parent description query: retVal.
	^retVal