accessing
isInEdit: anObject
	self mementoCache ifNil: [ ^false ].
	^(self mementoCache at: anObject ifAbsent: [ nil ]) notNil