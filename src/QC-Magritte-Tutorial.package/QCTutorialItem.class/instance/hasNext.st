testing
hasNext
	self parent ifNil: [ ^false ].
	^self parent hasNext: self