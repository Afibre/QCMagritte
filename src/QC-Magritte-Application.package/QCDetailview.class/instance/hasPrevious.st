testing
hasPrevious
	self prevPage ifNil: [ ^false ].
	^ self prevPage hasPrevious: self target.