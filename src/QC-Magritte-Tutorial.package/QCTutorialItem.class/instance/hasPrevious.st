testing
hasPrevious
	self parent ifNil: [ ^false ].
	^self parent hasPrevious: self