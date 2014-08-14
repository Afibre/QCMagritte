testing
hasNext
	self prevPage ifNil: [ ^false ].
	^ self prevPage hasNext: self target.