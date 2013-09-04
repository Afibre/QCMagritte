accessing
canBeResult: anObject
	anObject canBeResult ifFalse: [ ^false ].
	self resultType ifNil: [ ^true ].
	^self resultType = anObject queryClass